@interface MPAVController
- (void)setStopAtEnd:(BOOL)stopAtEnd;
@end

%hook MPAVController
- (void)togglePlayback {
    [self setStopAtEnd:YES];
    %orig;
}
%end
