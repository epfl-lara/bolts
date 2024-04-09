; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61926 () Bool)

(assert start!61926)

(declare-fun b!692525 () Bool)

(declare-fun res!456902 () Bool)

(declare-fun e!394043 () Bool)

(assert (=> b!692525 (=> (not res!456902) (not e!394043))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39813 0))(
  ( (array!39814 (arr!19068 (Array (_ BitVec 32) (_ BitVec 64))) (size!19451 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39813)

(assert (=> b!692525 (= res!456902 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19451 a!3626))))))

(declare-fun b!692526 () Bool)

(declare-fun res!456921 () Bool)

(declare-fun e!394039 () Bool)

(assert (=> b!692526 (=> (not res!456921) (not e!394039))))

(declare-datatypes ((List!13162 0))(
  ( (Nil!13159) (Cons!13158 (h!14203 (_ BitVec 64)) (t!19443 List!13162)) )
))
(declare-fun lt!316583 () List!13162)

(declare-fun contains!3705 (List!13162 (_ BitVec 64)) Bool)

(assert (=> b!692526 (= res!456921 (not (contains!3705 lt!316583 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692527 () Bool)

(declare-fun res!456917 () Bool)

(assert (=> b!692527 (=> (not res!456917) (not e!394039))))

(assert (=> b!692527 (= res!456917 (not (contains!3705 lt!316583 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692528 () Bool)

(declare-fun res!456905 () Bool)

(assert (=> b!692528 (=> (not res!456905) (not e!394043))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!692528 (= res!456905 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!692529 () Bool)

(declare-fun res!456903 () Bool)

(assert (=> b!692529 (=> (not res!456903) (not e!394039))))

(declare-fun noDuplicate!952 (List!13162) Bool)

(assert (=> b!692529 (= res!456903 (noDuplicate!952 lt!316583))))

(declare-fun b!692530 () Bool)

(declare-fun e!394036 () Bool)

(assert (=> b!692530 (= e!394036 (not (contains!3705 lt!316583 k!2843)))))

(declare-fun b!692531 () Bool)

(declare-fun res!456920 () Bool)

(assert (=> b!692531 (=> (not res!456920) (not e!394043))))

(declare-fun arrayNoDuplicates!0 (array!39813 (_ BitVec 32) List!13162) Bool)

(assert (=> b!692531 (= res!456920 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13159))))

(declare-fun b!692532 () Bool)

(declare-fun res!456914 () Bool)

(assert (=> b!692532 (=> (not res!456914) (not e!394043))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!692532 (= res!456914 (validKeyInArray!0 k!2843))))

(declare-fun b!692533 () Bool)

(declare-fun res!456909 () Bool)

(assert (=> b!692533 (=> (not res!456909) (not e!394043))))

(declare-fun acc!681 () List!13162)

(assert (=> b!692533 (= res!456909 (not (contains!3705 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692534 () Bool)

(declare-datatypes ((Unit!24442 0))(
  ( (Unit!24443) )
))
(declare-fun e!394044 () Unit!24442)

(declare-fun Unit!24444 () Unit!24442)

(assert (=> b!692534 (= e!394044 Unit!24444)))

(declare-fun res!456911 () Bool)

(assert (=> start!61926 (=> (not res!456911) (not e!394043))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!61926 (= res!456911 (and (bvslt (size!19451 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19451 a!3626))))))

(assert (=> start!61926 e!394043))

(assert (=> start!61926 true))

(declare-fun array_inv!14842 (array!39813) Bool)

(assert (=> start!61926 (array_inv!14842 a!3626)))

(declare-fun b!692535 () Bool)

(declare-fun e!394037 () Bool)

(assert (=> b!692535 (= e!394037 e!394039)))

(declare-fun res!456904 () Bool)

(assert (=> b!692535 (=> (not res!456904) (not e!394039))))

(assert (=> b!692535 (= res!456904 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!415 (List!13162 (_ BitVec 64)) List!13162)

(assert (=> b!692535 (= lt!316583 ($colon$colon!415 acc!681 (select (arr!19068 a!3626) from!3004)))))

(declare-fun b!692536 () Bool)

(declare-fun res!456910 () Bool)

(assert (=> b!692536 (=> (not res!456910) (not e!394039))))

(assert (=> b!692536 (= res!456910 e!394036)))

(declare-fun res!456907 () Bool)

(assert (=> b!692536 (=> res!456907 e!394036)))

(assert (=> b!692536 (= res!456907 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!692537 () Bool)

(declare-fun res!456912 () Bool)

(assert (=> b!692537 (=> (not res!456912) (not e!394043))))

(assert (=> b!692537 (= res!456912 (noDuplicate!952 acc!681))))

(declare-fun b!692538 () Bool)

(declare-fun e!394042 () Bool)

(assert (=> b!692538 (= e!394042 (contains!3705 acc!681 k!2843))))

(declare-fun b!692539 () Bool)

(declare-fun res!456922 () Bool)

(assert (=> b!692539 (=> (not res!456922) (not e!394043))))

(assert (=> b!692539 (= res!456922 (not (contains!3705 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692540 () Bool)

(declare-fun e!394045 () Bool)

(assert (=> b!692540 (= e!394039 e!394045)))

(declare-fun res!456913 () Bool)

(assert (=> b!692540 (=> res!456913 e!394045)))

(assert (=> b!692540 (= res!456913 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!692541 () Bool)

(declare-fun Unit!24445 () Unit!24442)

(assert (=> b!692541 (= e!394044 Unit!24445)))

(assert (=> b!692541 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316584 () Unit!24442)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39813 (_ BitVec 64) (_ BitVec 32)) Unit!24442)

(assert (=> b!692541 (= lt!316584 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!692541 false))

(declare-fun b!692542 () Bool)

(declare-fun e!394041 () Bool)

(assert (=> b!692542 (= e!394041 (not (contains!3705 acc!681 k!2843)))))

(declare-fun b!692543 () Bool)

(declare-fun res!456906 () Bool)

(assert (=> b!692543 (=> (not res!456906) (not e!394043))))

(assert (=> b!692543 (= res!456906 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19451 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!692544 () Bool)

(assert (=> b!692544 (= e!394045 (contains!3705 lt!316583 k!2843))))

(declare-fun b!692545 () Bool)

(declare-fun res!456901 () Bool)

(assert (=> b!692545 (=> (not res!456901) (not e!394043))))

(assert (=> b!692545 (= res!456901 (validKeyInArray!0 (select (arr!19068 a!3626) from!3004)))))

(declare-fun b!692546 () Bool)

(declare-fun e!394040 () Bool)

(assert (=> b!692546 (= e!394040 e!394041)))

(declare-fun res!456908 () Bool)

(assert (=> b!692546 (=> (not res!456908) (not e!394041))))

(assert (=> b!692546 (= res!456908 (bvsle from!3004 i!1382))))

(declare-fun b!692547 () Bool)

(assert (=> b!692547 (= e!394043 e!394037)))

(declare-fun res!456923 () Bool)

(assert (=> b!692547 (=> (not res!456923) (not e!394037))))

(assert (=> b!692547 (= res!456923 (not (= (select (arr!19068 a!3626) from!3004) k!2843)))))

(declare-fun lt!316582 () Unit!24442)

(assert (=> b!692547 (= lt!316582 e!394044)))

(declare-fun c!78179 () Bool)

(assert (=> b!692547 (= c!78179 (= (select (arr!19068 a!3626) from!3004) k!2843))))

(declare-fun b!692548 () Bool)

(declare-fun res!456915 () Bool)

(assert (=> b!692548 (=> (not res!456915) (not e!394043))))

(assert (=> b!692548 (= res!456915 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!692549 () Bool)

(declare-fun res!456918 () Bool)

(assert (=> b!692549 (=> (not res!456918) (not e!394043))))

(assert (=> b!692549 (= res!456918 e!394040)))

(declare-fun res!456916 () Bool)

(assert (=> b!692549 (=> res!456916 e!394040)))

(assert (=> b!692549 (= res!456916 e!394042)))

(declare-fun res!456919 () Bool)

(assert (=> b!692549 (=> (not res!456919) (not e!394042))))

(assert (=> b!692549 (= res!456919 (bvsgt from!3004 i!1382))))

(assert (= (and start!61926 res!456911) b!692537))

(assert (= (and b!692537 res!456912) b!692539))

(assert (= (and b!692539 res!456922) b!692533))

(assert (= (and b!692533 res!456909) b!692549))

(assert (= (and b!692549 res!456919) b!692538))

(assert (= (and b!692549 (not res!456916)) b!692546))

(assert (= (and b!692546 res!456908) b!692542))

(assert (= (and b!692549 res!456918) b!692531))

(assert (= (and b!692531 res!456920) b!692548))

(assert (= (and b!692548 res!456915) b!692525))

(assert (= (and b!692525 res!456902) b!692532))

(assert (= (and b!692532 res!456914) b!692528))

(assert (= (and b!692528 res!456905) b!692543))

(assert (= (and b!692543 res!456906) b!692545))

(assert (= (and b!692545 res!456901) b!692547))

(assert (= (and b!692547 c!78179) b!692541))

(assert (= (and b!692547 (not c!78179)) b!692534))

(assert (= (and b!692547 res!456923) b!692535))

(assert (= (and b!692535 res!456904) b!692529))

(assert (= (and b!692529 res!456903) b!692526))

(assert (= (and b!692526 res!456921) b!692527))

(assert (= (and b!692527 res!456917) b!692536))

(assert (= (and b!692536 (not res!456907)) b!692530))

(assert (= (and b!692536 res!456910) b!692540))

(assert (= (and b!692540 (not res!456913)) b!692544))

(declare-fun m!655113 () Bool)

(assert (=> b!692526 m!655113))

(declare-fun m!655115 () Bool)

(assert (=> b!692533 m!655115))

(declare-fun m!655117 () Bool)

(assert (=> b!692538 m!655117))

(declare-fun m!655119 () Bool)

(assert (=> b!692544 m!655119))

(declare-fun m!655121 () Bool)

(assert (=> b!692548 m!655121))

(declare-fun m!655123 () Bool)

(assert (=> b!692529 m!655123))

(declare-fun m!655125 () Bool)

(assert (=> b!692539 m!655125))

(assert (=> b!692542 m!655117))

(declare-fun m!655127 () Bool)

(assert (=> b!692528 m!655127))

(declare-fun m!655129 () Bool)

(assert (=> b!692535 m!655129))

(assert (=> b!692535 m!655129))

(declare-fun m!655131 () Bool)

(assert (=> b!692535 m!655131))

(assert (=> b!692547 m!655129))

(declare-fun m!655133 () Bool)

(assert (=> b!692537 m!655133))

(declare-fun m!655135 () Bool)

(assert (=> start!61926 m!655135))

(declare-fun m!655137 () Bool)

(assert (=> b!692531 m!655137))

(assert (=> b!692530 m!655119))

(declare-fun m!655139 () Bool)

(assert (=> b!692532 m!655139))

(declare-fun m!655141 () Bool)

(assert (=> b!692527 m!655141))

(declare-fun m!655143 () Bool)

(assert (=> b!692541 m!655143))

(declare-fun m!655145 () Bool)

(assert (=> b!692541 m!655145))

(assert (=> b!692545 m!655129))

(assert (=> b!692545 m!655129))

(declare-fun m!655147 () Bool)

(assert (=> b!692545 m!655147))

(push 1)

(assert (not b!692535))

(assert (not b!692541))

(assert (not start!61926))

(assert (not b!692530))

(assert (not b!692542))

(assert (not b!692532))

(assert (not b!692531))

(assert (not b!692527))

(assert (not b!692537))

(assert (not b!692529))

(assert (not b!692545))

(assert (not b!692539))

(assert (not b!692548))

(assert (not b!692538))

(assert (not b!692544))

(assert (not b!692533))

(assert (not b!692526))

(assert (not b!692528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95595 () Bool)

(assert (=> d!95595 (= ($colon$colon!415 acc!681 (select (arr!19068 a!3626) from!3004)) (Cons!13158 (select (arr!19068 a!3626) from!3004) acc!681))))

(assert (=> b!692535 d!95595))

(declare-fun d!95597 () Bool)

(declare-fun lt!316611 () Bool)

(declare-fun content!317 (List!13162) (Set (_ BitVec 64)))

(assert (=> d!95597 (= lt!316611 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!317 lt!316583)))))

(declare-fun e!394147 () Bool)

(assert (=> d!95597 (= lt!316611 e!394147)))

(declare-fun res!457100 () Bool)

(assert (=> d!95597 (=> (not res!457100) (not e!394147))))

(assert (=> d!95597 (= res!457100 (is-Cons!13158 lt!316583))))

(assert (=> d!95597 (= (contains!3705 lt!316583 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316611)))

(declare-fun b!692743 () Bool)

(declare-fun e!394146 () Bool)

(assert (=> b!692743 (= e!394147 e!394146)))

(declare-fun res!457099 () Bool)

(assert (=> b!692743 (=> res!457099 e!394146)))

(assert (=> b!692743 (= res!457099 (= (h!14203 lt!316583) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692744 () Bool)

(assert (=> b!692744 (= e!394146 (contains!3705 (t!19443 lt!316583) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95597 res!457100) b!692743))

(assert (= (and b!692743 (not res!457099)) b!692744))

(declare-fun m!655255 () Bool)

(assert (=> d!95597 m!655255))

(declare-fun m!655257 () Bool)

(assert (=> d!95597 m!655257))

(declare-fun m!655259 () Bool)

(assert (=> b!692744 m!655259))

(assert (=> b!692526 d!95597))

(declare-fun d!95605 () Bool)

(declare-fun res!457109 () Bool)

(declare-fun e!394156 () Bool)

(assert (=> d!95605 (=> res!457109 e!394156)))

(assert (=> d!95605 (= res!457109 (is-Nil!13159 acc!681))))

(assert (=> d!95605 (= (noDuplicate!952 acc!681) e!394156)))

(declare-fun b!692753 () Bool)

(declare-fun e!394157 () Bool)

(assert (=> b!692753 (= e!394156 e!394157)))

(declare-fun res!457110 () Bool)

(assert (=> b!692753 (=> (not res!457110) (not e!394157))))

(assert (=> b!692753 (= res!457110 (not (contains!3705 (t!19443 acc!681) (h!14203 acc!681))))))

(declare-fun b!692754 () Bool)

(assert (=> b!692754 (= e!394157 (noDuplicate!952 (t!19443 acc!681)))))

(assert (= (and d!95605 (not res!457109)) b!692753))

(assert (= (and b!692753 res!457110) b!692754))

(declare-fun m!655261 () Bool)

(assert (=> b!692753 m!655261))

(declare-fun m!655263 () Bool)

(assert (=> b!692754 m!655263))

(assert (=> b!692537 d!95605))

(declare-fun b!692790 () Bool)

(declare-fun e!394193 () Bool)

(declare-fun call!34254 () Bool)

(assert (=> b!692790 (= e!394193 call!34254)))

(declare-fun b!692791 () Bool)

(declare-fun e!394190 () Bool)

(assert (=> b!692791 (= e!394190 e!394193)))

(declare-fun c!78192 () Bool)

(assert (=> b!692791 (= c!78192 (validKeyInArray!0 (select (arr!19068 a!3626) from!3004)))))

(declare-fun bm!34251 () Bool)

(assert (=> bm!34251 (= call!34254 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78192 (Cons!13158 (select (arr!19068 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!692792 () Bool)

(assert (=> b!692792 (= e!394193 call!34254)))

(declare-fun b!692793 () Bool)

(declare-fun e!394191 () Bool)

(assert (=> b!692793 (= e!394191 e!394190)))

(declare-fun res!457142 () Bool)

(assert (=> b!692793 (=> (not res!457142) (not e!394190))))

(declare-fun e!394192 () Bool)

(assert (=> b!692793 (= res!457142 (not e!394192))))

(declare-fun res!457140 () Bool)

(assert (=> b!692793 (=> (not res!457140) (not e!394192))))

(assert (=> b!692793 (= res!457140 (validKeyInArray!0 (select (arr!19068 a!3626) from!3004)))))

(declare-fun b!692794 () Bool)

(assert (=> b!692794 (= e!394192 (contains!3705 acc!681 (select (arr!19068 a!3626) from!3004)))))

(declare-fun d!95613 () Bool)

(declare-fun res!457141 () Bool)

(assert (=> d!95613 (=> res!457141 e!394191)))

(assert (=> d!95613 (= res!457141 (bvsge from!3004 (size!19451 a!3626)))))

(assert (=> d!95613 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!394191)))

(assert (= (and d!95613 (not res!457141)) b!692793))

(assert (= (and b!692793 res!457140) b!692794))

(assert (= (and b!692793 res!457142) b!692791))

(assert (= (and b!692791 c!78192) b!692792))

(assert (= (and b!692791 (not c!78192)) b!692790))

(assert (= (or b!692792 b!692790) bm!34251))

(assert (=> b!692791 m!655129))

(assert (=> b!692791 m!655129))

(assert (=> b!692791 m!655147))

(assert (=> bm!34251 m!655129))

(declare-fun m!655299 () Bool)

(assert (=> bm!34251 m!655299))

(assert (=> b!692793 m!655129))

(assert (=> b!692793 m!655129))

(assert (=> b!692793 m!655147))

(assert (=> b!692794 m!655129))

(assert (=> b!692794 m!655129))

(declare-fun m!655301 () Bool)

(assert (=> b!692794 m!655301))

(assert (=> b!692548 d!95613))

(declare-fun d!95637 () Bool)

(declare-fun lt!316620 () Bool)

(assert (=> d!95637 (= lt!316620 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!317 lt!316583)))))

(declare-fun e!394197 () Bool)

(assert (=> d!95637 (= lt!316620 e!394197)))

(declare-fun res!457146 () Bool)

(assert (=> d!95637 (=> (not res!457146) (not e!394197))))

(assert (=> d!95637 (= res!457146 (is-Cons!13158 lt!316583))))

(assert (=> d!95637 (= (contains!3705 lt!316583 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316620)))

(declare-fun b!692797 () Bool)

(declare-fun e!394196 () Bool)

(assert (=> b!692797 (= e!394197 e!394196)))

(declare-fun res!457145 () Bool)

(assert (=> b!692797 (=> res!457145 e!394196)))

(assert (=> b!692797 (= res!457145 (= (h!14203 lt!316583) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692798 () Bool)

(assert (=> b!692798 (= e!394196 (contains!3705 (t!19443 lt!316583) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95637 res!457146) b!692797))

(assert (= (and b!692797 (not res!457145)) b!692798))

(assert (=> d!95637 m!655255))

(declare-fun m!655303 () Bool)

(assert (=> d!95637 m!655303))

(declare-fun m!655305 () Bool)

(assert (=> b!692798 m!655305))

(assert (=> b!692527 d!95637))

(declare-fun d!95639 () Bool)

(declare-fun lt!316621 () Bool)

(assert (=> d!95639 (= lt!316621 (set.member k!2843 (content!317 acc!681)))))

(declare-fun e!394201 () Bool)

(assert (=> d!95639 (= lt!316621 e!394201)))

(declare-fun res!457150 () Bool)

(assert (=> d!95639 (=> (not res!457150) (not e!394201))))

(assert (=> d!95639 (= res!457150 (is-Cons!13158 acc!681))))

(assert (=> d!95639 (= (contains!3705 acc!681 k!2843) lt!316621)))

(declare-fun b!692801 () Bool)

(declare-fun e!394200 () Bool)

(assert (=> b!692801 (= e!394201 e!394200)))

(declare-fun res!457149 () Bool)

(assert (=> b!692801 (=> res!457149 e!394200)))

(assert (=> b!692801 (= res!457149 (= (h!14203 acc!681) k!2843))))

(declare-fun b!692802 () Bool)

(assert (=> b!692802 (= e!394200 (contains!3705 (t!19443 acc!681) k!2843))))

(assert (= (and d!95639 res!457150) b!692801))

(assert (= (and b!692801 (not res!457149)) b!692802))

(declare-fun m!655307 () Bool)

(assert (=> d!95639 m!655307))

(declare-fun m!655309 () Bool)

(assert (=> d!95639 m!655309))

(declare-fun m!655311 () Bool)

(assert (=> b!692802 m!655311))

(assert (=> b!692538 d!95639))

(declare-fun d!95641 () Bool)

(declare-fun res!457162 () Bool)

(declare-fun e!394216 () Bool)

(assert (=> d!95641 (=> res!457162 e!394216)))

(assert (=> d!95641 (= res!457162 (= (select (arr!19068 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!95641 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!394216)))

(declare-fun b!692820 () Bool)

(declare-fun e!394217 () Bool)

(assert (=> b!692820 (= e!394216 e!394217)))

(declare-fun res!457163 () Bool)

(assert (=> b!692820 (=> (not res!457163) (not e!394217))))

(assert (=> b!692820 (= res!457163 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19451 a!3626)))))

(declare-fun b!692821 () Bool)

(assert (=> b!692821 (= e!394217 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95641 (not res!457162)) b!692820))

(assert (= (and b!692820 res!457163) b!692821))

(declare-fun m!655317 () Bool)

(assert (=> d!95641 m!655317))

(declare-fun m!655319 () Bool)

(assert (=> b!692821 m!655319))

(assert (=> b!692528 d!95641))

(declare-fun d!95649 () Bool)

(declare-fun lt!316623 () Bool)

(assert (=> d!95649 (= lt!316623 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!317 acc!681)))))

(declare-fun e!394221 () Bool)

(assert (=> d!95649 (= lt!316623 e!394221)))

(declare-fun res!457167 () Bool)

(assert (=> d!95649 (=> (not res!457167) (not e!394221))))

(assert (=> d!95649 (= res!457167 (is-Cons!13158 acc!681))))

(assert (=> d!95649 (= (contains!3705 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316623)))

(declare-fun b!692824 () Bool)

(declare-fun e!394220 () Bool)

(assert (=> b!692824 (= e!394221 e!394220)))

(declare-fun res!457166 () Bool)

(assert (=> b!692824 (=> res!457166 e!394220)))

(assert (=> b!692824 (= res!457166 (= (h!14203 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692825 () Bool)

(assert (=> b!692825 (= e!394220 (contains!3705 (t!19443 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95649 res!457167) b!692824))

(assert (= (and b!692824 (not res!457166)) b!692825))

(assert (=> d!95649 m!655307))

(declare-fun m!655325 () Bool)

(assert (=> d!95649 m!655325))

(declare-fun m!655331 () Bool)

(assert (=> b!692825 m!655331))

(assert (=> b!692539 d!95649))

(declare-fun d!95653 () Bool)

(declare-fun res!457170 () Bool)

(declare-fun e!394224 () Bool)

(assert (=> d!95653 (=> res!457170 e!394224)))

(assert (=> d!95653 (= res!457170 (is-Nil!13159 lt!316583))))

(assert (=> d!95653 (= (noDuplicate!952 lt!316583) e!394224)))

(declare-fun b!692828 () Bool)

(declare-fun e!394225 () Bool)

(assert (=> b!692828 (= e!394224 e!394225)))

(declare-fun res!457171 () Bool)

(assert (=> b!692828 (=> (not res!457171) (not e!394225))))

(assert (=> b!692828 (= res!457171 (not (contains!3705 (t!19443 lt!316583) (h!14203 lt!316583))))))

(declare-fun b!692829 () Bool)

(assert (=> b!692829 (= e!394225 (noDuplicate!952 (t!19443 lt!316583)))))

(assert (= (and d!95653 (not res!457170)) b!692828))

(assert (= (and b!692828 res!457171) b!692829))

(declare-fun m!655337 () Bool)

(assert (=> b!692828 m!655337))

(declare-fun m!655339 () Bool)

(assert (=> b!692829 m!655339))

(assert (=> b!692529 d!95653))

(declare-fun d!95659 () Bool)

(declare-fun lt!316625 () Bool)

(assert (=> d!95659 (= lt!316625 (set.member k!2843 (content!317 lt!316583)))))

(declare-fun e!394229 () Bool)

(assert (=> d!95659 (= lt!316625 e!394229)))

(declare-fun res!457175 () Bool)

(assert (=> d!95659 (=> (not res!457175) (not e!394229))))

(assert (=> d!95659 (= res!457175 (is-Cons!13158 lt!316583))))

(assert (=> d!95659 (= (contains!3705 lt!316583 k!2843) lt!316625)))

(declare-fun b!692832 () Bool)

(declare-fun e!394228 () Bool)

(assert (=> b!692832 (= e!394229 e!394228)))

(declare-fun res!457174 () Bool)

(assert (=> b!692832 (=> res!457174 e!394228)))

(assert (=> b!692832 (= res!457174 (= (h!14203 lt!316583) k!2843))))

(declare-fun b!692833 () Bool)

(assert (=> b!692833 (= e!394228 (contains!3705 (t!19443 lt!316583) k!2843))))

(assert (= (and d!95659 res!457175) b!692832))

(assert (= (and b!692832 (not res!457174)) b!692833))

(assert (=> d!95659 m!655255))

(declare-fun m!655341 () Bool)

(assert (=> d!95659 m!655341))

(declare-fun m!655343 () Bool)

(assert (=> b!692833 m!655343))

(assert (=> b!692530 d!95659))

(declare-fun d!95661 () Bool)

(declare-fun res!457176 () Bool)

(declare-fun e!394230 () Bool)

(assert (=> d!95661 (=> res!457176 e!394230)))

(assert (=> d!95661 (= res!457176 (= (select (arr!19068 a!3626) from!3004) k!2843))))

(assert (=> d!95661 (= (arrayContainsKey!0 a!3626 k!2843 from!3004) e!394230)))

(declare-fun b!692834 () Bool)

(declare-fun e!394231 () Bool)

(assert (=> b!692834 (= e!394230 e!394231)))

(declare-fun res!457177 () Bool)

(assert (=> b!692834 (=> (not res!457177) (not e!394231))))

(assert (=> b!692834 (= res!457177 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19451 a!3626)))))

(declare-fun b!692835 () Bool)

(assert (=> b!692835 (= e!394231 (arrayContainsKey!0 a!3626 k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95661 (not res!457176)) b!692834))

(assert (= (and b!692834 res!457177) b!692835))

(assert (=> d!95661 m!655129))

(declare-fun m!655345 () Bool)

(assert (=> b!692835 m!655345))

(assert (=> b!692541 d!95661))

(declare-fun d!95663 () Bool)

(assert (=> d!95663 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!316634 () Unit!24442)

(declare-fun choose!13 (array!39813 (_ BitVec 64) (_ BitVec 32)) Unit!24442)

(assert (=> d!95663 (= lt!316634 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!95663 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95663 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!316634)))

(declare-fun bs!20272 () Bool)

(assert (= bs!20272 d!95663))

(assert (=> bs!20272 m!655127))

(declare-fun m!655367 () Bool)

(assert (=> bs!20272 m!655367))

(assert (=> b!692541 d!95663))

(declare-fun b!692849 () Bool)

(declare-fun e!394247 () Bool)

(declare-fun call!34259 () Bool)

(assert (=> b!692849 (= e!394247 call!34259)))

(declare-fun b!692850 () Bool)

(declare-fun e!394244 () Bool)

(assert (=> b!692850 (= e!394244 e!394247)))

(declare-fun c!78197 () Bool)

(assert (=> b!692850 (= c!78197 (validKeyInArray!0 (select (arr!19068 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!34256 () Bool)

(assert (=> bm!34256 (= call!34259 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78197 (Cons!13158 (select (arr!19068 a!3626) #b00000000000000000000000000000000) Nil!13159) Nil!13159)))))

(declare-fun b!692851 () Bool)

(assert (=> b!692851 (= e!394247 call!34259)))

(declare-fun b!692852 () Bool)

(declare-fun e!394245 () Bool)

(assert (=> b!692852 (= e!394245 e!394244)))

(declare-fun res!457191 () Bool)

(assert (=> b!692852 (=> (not res!457191) (not e!394244))))

(declare-fun e!394246 () Bool)

(assert (=> b!692852 (= res!457191 (not e!394246))))

(declare-fun res!457189 () Bool)

(assert (=> b!692852 (=> (not res!457189) (not e!394246))))

(assert (=> b!692852 (= res!457189 (validKeyInArray!0 (select (arr!19068 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692853 () Bool)

(assert (=> b!692853 (= e!394246 (contains!3705 Nil!13159 (select (arr!19068 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!95675 () Bool)

(declare-fun res!457190 () Bool)

(assert (=> d!95675 (=> res!457190 e!394245)))

(assert (=> d!95675 (= res!457190 (bvsge #b00000000000000000000000000000000 (size!19451 a!3626)))))

(assert (=> d!95675 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13159) e!394245)))

(assert (= (and d!95675 (not res!457190)) b!692852))

(assert (= (and b!692852 res!457189) b!692853))

(assert (= (and b!692852 res!457191) b!692850))

(assert (= (and b!692850 c!78197) b!692851))

(assert (= (and b!692850 (not c!78197)) b!692849))

(assert (= (or b!692851 b!692849) bm!34256))

(assert (=> b!692850 m!655317))

(assert (=> b!692850 m!655317))

(declare-fun m!655373 () Bool)

(assert (=> b!692850 m!655373))

(assert (=> bm!34256 m!655317))

(declare-fun m!655375 () Bool)

(assert (=> bm!34256 m!655375))

(assert (=> b!692852 m!655317))

(assert (=> b!692852 m!655317))

(assert (=> b!692852 m!655373))

(assert (=> b!692853 m!655317))

(assert (=> b!692853 m!655317))

(declare-fun m!655377 () Bool)

(assert (=> b!692853 m!655377))

(assert (=> b!692531 d!95675))

(assert (=> b!692542 d!95639))

(declare-fun d!95677 () Bool)

(assert (=> d!95677 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!692532 d!95677))

(declare-fun d!95679 () Bool)

(declare-fun lt!316635 () Bool)

(assert (=> d!95679 (= lt!316635 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!317 acc!681)))))

(declare-fun e!394249 () Bool)

(assert (=> d!95679 (= lt!316635 e!394249)))

(declare-fun res!457193 () Bool)

(assert (=> d!95679 (=> (not res!457193) (not e!394249))))

(assert (=> d!95679 (= res!457193 (is-Cons!13158 acc!681))))

(assert (=> d!95679 (= (contains!3705 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316635)))

(declare-fun b!692854 () Bool)

(declare-fun e!394248 () Bool)

(assert (=> b!692854 (= e!394249 e!394248)))

(declare-fun res!457192 () Bool)

(assert (=> b!692854 (=> res!457192 e!394248)))

(assert (=> b!692854 (= res!457192 (= (h!14203 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692855 () Bool)

(assert (=> b!692855 (= e!394248 (contains!3705 (t!19443 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95679 res!457193) b!692854))

(assert (= (and b!692854 (not res!457192)) b!692855))

(assert (=> d!95679 m!655307))

(declare-fun m!655379 () Bool)

(assert (=> d!95679 m!655379))

(declare-fun m!655381 () Bool)

(assert (=> b!692855 m!655381))

(assert (=> b!692533 d!95679))

(assert (=> b!692544 d!95659))

(declare-fun d!95681 () Bool)

(assert (=> d!95681 (= (array_inv!14842 a!3626) (bvsge (size!19451 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61926 d!95681))

(declare-fun d!95683 () Bool)

(assert (=> d!95683 (= (validKeyInArray!0 (select (arr!19068 a!3626) from!3004)) (and (not (= (select (arr!19068 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19068 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!692545 d!95683))

(push 1)

(assert (not b!692852))

(assert (not b!692821))

(assert (not b!692825))

(assert (not b!692791))

(assert (not b!692855))

(assert (not d!95663))

(assert (not b!692754))

(assert (not b!692744))

(assert (not b!692793))

(assert (not b!692850))

(assert (not d!95637))

(assert (not b!692829))

(assert (not d!95679))

(assert (not b!692802))

(assert (not d!95649))

(assert (not b!692835))

(assert (not d!95639))

(assert (not d!95659))

(assert (not b!692753))

(assert (not b!692798))

(assert (not b!692828))

(assert (not d!95597))

(assert (not b!692794))

(assert (not bm!34256))

(assert (not b!692833))

(assert (not b!692853))

(assert (not bm!34251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

