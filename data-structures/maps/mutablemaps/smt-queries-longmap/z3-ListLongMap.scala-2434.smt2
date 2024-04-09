; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38398 () Bool)

(assert start!38398)

(declare-fun b!395828 () Bool)

(declare-fun res!227078 () Bool)

(declare-fun e!239574 () Bool)

(assert (=> b!395828 (=> (not res!227078) (not e!239574))))

(declare-datatypes ((array!23571 0))(
  ( (array!23572 (arr!11234 (Array (_ BitVec 32) (_ BitVec 64))) (size!11586 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23571)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23571 (_ BitVec 32)) Bool)

(assert (=> b!395828 (= res!227078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!395829 () Bool)

(declare-fun res!227080 () Bool)

(assert (=> b!395829 (=> (not res!227080) (not e!239574))))

(assert (=> b!395829 (= res!227080 (and (bvsle #b00000000000000000000000000000000 (size!11586 _keys!709)) (bvslt (size!11586 _keys!709) #b01111111111111111111111111111111)))))

(declare-fun b!395830 () Bool)

(declare-fun res!227079 () Bool)

(assert (=> b!395830 (=> (not res!227079) (not e!239574))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14229 0))(
  ( (V!14230 (val!4966 Int)) )
))
(declare-datatypes ((ValueCell!4578 0))(
  ( (ValueCellFull!4578 (v!7208 V!14229)) (EmptyCell!4578) )
))
(declare-datatypes ((array!23573 0))(
  ( (array!23574 (arr!11235 (Array (_ BitVec 32) ValueCell!4578)) (size!11587 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23573)

(assert (=> b!395830 (= res!227079 (and (= (size!11587 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11586 _keys!709) (size!11587 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395831 () Bool)

(declare-fun res!227085 () Bool)

(assert (=> b!395831 (=> (not res!227085) (not e!239574))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395831 (= res!227085 (or (= (select (arr!11234 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11234 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!395832 () Bool)

(declare-fun res!227081 () Bool)

(assert (=> b!395832 (=> (not res!227081) (not e!239574))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!395832 (= res!227081 (validKeyInArray!0 k0!794))))

(declare-fun b!395833 () Bool)

(declare-fun res!227088 () Bool)

(assert (=> b!395833 (=> (not res!227088) (not e!239574))))

(declare-datatypes ((List!6485 0))(
  ( (Nil!6482) (Cons!6481 (h!7337 (_ BitVec 64)) (t!11667 List!6485)) )
))
(declare-fun arrayNoDuplicates!0 (array!23571 (_ BitVec 32) List!6485) Bool)

(assert (=> b!395833 (= res!227088 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6482))))

(declare-fun b!395834 () Bool)

(declare-fun e!239572 () Bool)

(declare-fun tp_is_empty!9843 () Bool)

(assert (=> b!395834 (= e!239572 tp_is_empty!9843)))

(declare-fun res!227086 () Bool)

(assert (=> start!38398 (=> (not res!227086) (not e!239574))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38398 (= res!227086 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11586 _keys!709))))))

(assert (=> start!38398 e!239574))

(assert (=> start!38398 true))

(declare-fun e!239576 () Bool)

(declare-fun array_inv!8226 (array!23573) Bool)

(assert (=> start!38398 (and (array_inv!8226 _values!549) e!239576)))

(declare-fun array_inv!8227 (array!23571) Bool)

(assert (=> start!38398 (array_inv!8227 _keys!709)))

(declare-fun b!395835 () Bool)

(declare-fun res!227083 () Bool)

(assert (=> b!395835 (=> (not res!227083) (not e!239574))))

(assert (=> b!395835 (= res!227083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23572 (store (arr!11234 _keys!709) i!563 k0!794) (size!11586 _keys!709)) mask!1025))))

(declare-fun b!395836 () Bool)

(declare-fun e!239573 () Bool)

(assert (=> b!395836 (= e!239573 tp_is_empty!9843)))

(declare-fun b!395837 () Bool)

(declare-fun noDuplicate!197 (List!6485) Bool)

(assert (=> b!395837 (= e!239574 (not (noDuplicate!197 Nil!6482)))))

(declare-fun b!395838 () Bool)

(declare-fun res!227084 () Bool)

(assert (=> b!395838 (=> (not res!227084) (not e!239574))))

(declare-fun arrayContainsKey!0 (array!23571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!395838 (= res!227084 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16380 () Bool)

(declare-fun mapRes!16380 () Bool)

(assert (=> mapIsEmpty!16380 mapRes!16380))

(declare-fun mapNonEmpty!16380 () Bool)

(declare-fun tp!32175 () Bool)

(assert (=> mapNonEmpty!16380 (= mapRes!16380 (and tp!32175 e!239572))))

(declare-fun mapValue!16380 () ValueCell!4578)

(declare-fun mapRest!16380 () (Array (_ BitVec 32) ValueCell!4578))

(declare-fun mapKey!16380 () (_ BitVec 32))

(assert (=> mapNonEmpty!16380 (= (arr!11235 _values!549) (store mapRest!16380 mapKey!16380 mapValue!16380))))

(declare-fun b!395839 () Bool)

(declare-fun res!227087 () Bool)

(assert (=> b!395839 (=> (not res!227087) (not e!239574))))

(assert (=> b!395839 (= res!227087 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11586 _keys!709))))))

(declare-fun b!395840 () Bool)

(assert (=> b!395840 (= e!239576 (and e!239573 mapRes!16380))))

(declare-fun condMapEmpty!16380 () Bool)

(declare-fun mapDefault!16380 () ValueCell!4578)

(assert (=> b!395840 (= condMapEmpty!16380 (= (arr!11235 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4578)) mapDefault!16380)))))

(declare-fun b!395841 () Bool)

(declare-fun res!227082 () Bool)

(assert (=> b!395841 (=> (not res!227082) (not e!239574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395841 (= res!227082 (validMask!0 mask!1025))))

(assert (= (and start!38398 res!227086) b!395841))

(assert (= (and b!395841 res!227082) b!395830))

(assert (= (and b!395830 res!227079) b!395828))

(assert (= (and b!395828 res!227078) b!395833))

(assert (= (and b!395833 res!227088) b!395839))

(assert (= (and b!395839 res!227087) b!395832))

(assert (= (and b!395832 res!227081) b!395831))

(assert (= (and b!395831 res!227085) b!395838))

(assert (= (and b!395838 res!227084) b!395835))

(assert (= (and b!395835 res!227083) b!395829))

(assert (= (and b!395829 res!227080) b!395837))

(assert (= (and b!395840 condMapEmpty!16380) mapIsEmpty!16380))

(assert (= (and b!395840 (not condMapEmpty!16380)) mapNonEmpty!16380))

(get-info :version)

(assert (= (and mapNonEmpty!16380 ((_ is ValueCellFull!4578) mapValue!16380)) b!395834))

(assert (= (and b!395840 ((_ is ValueCellFull!4578) mapDefault!16380)) b!395836))

(assert (= start!38398 b!395840))

(declare-fun m!391655 () Bool)

(assert (=> b!395833 m!391655))

(declare-fun m!391657 () Bool)

(assert (=> b!395828 m!391657))

(declare-fun m!391659 () Bool)

(assert (=> start!38398 m!391659))

(declare-fun m!391661 () Bool)

(assert (=> start!38398 m!391661))

(declare-fun m!391663 () Bool)

(assert (=> b!395835 m!391663))

(declare-fun m!391665 () Bool)

(assert (=> b!395835 m!391665))

(declare-fun m!391667 () Bool)

(assert (=> b!395832 m!391667))

(declare-fun m!391669 () Bool)

(assert (=> b!395841 m!391669))

(declare-fun m!391671 () Bool)

(assert (=> mapNonEmpty!16380 m!391671))

(declare-fun m!391673 () Bool)

(assert (=> b!395831 m!391673))

(declare-fun m!391675 () Bool)

(assert (=> b!395838 m!391675))

(declare-fun m!391677 () Bool)

(assert (=> b!395837 m!391677))

(check-sat tp_is_empty!9843 (not mapNonEmpty!16380) (not b!395828) (not b!395838) (not b!395832) (not start!38398) (not b!395835) (not b!395841) (not b!395833) (not b!395837))
(check-sat)
(get-model)

(declare-fun b!395894 () Bool)

(declare-fun e!239601 () Bool)

(declare-fun e!239603 () Bool)

(assert (=> b!395894 (= e!239601 e!239603)))

(declare-fun res!227129 () Bool)

(assert (=> b!395894 (=> (not res!227129) (not e!239603))))

(declare-fun e!239602 () Bool)

(assert (=> b!395894 (= res!227129 (not e!239602))))

(declare-fun res!227130 () Bool)

(assert (=> b!395894 (=> (not res!227130) (not e!239602))))

(assert (=> b!395894 (= res!227130 (validKeyInArray!0 (select (arr!11234 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!27879 () Bool)

(declare-fun call!27882 () Bool)

(declare-fun c!54486 () Bool)

(assert (=> bm!27879 (= call!27882 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54486 (Cons!6481 (select (arr!11234 _keys!709) #b00000000000000000000000000000000) Nil!6482) Nil!6482)))))

(declare-fun b!395895 () Bool)

(declare-fun e!239600 () Bool)

(assert (=> b!395895 (= e!239600 call!27882)))

(declare-fun b!395896 () Bool)

(declare-fun contains!2483 (List!6485 (_ BitVec 64)) Bool)

(assert (=> b!395896 (= e!239602 (contains!2483 Nil!6482 (select (arr!11234 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!395898 () Bool)

(assert (=> b!395898 (= e!239603 e!239600)))

(assert (=> b!395898 (= c!54486 (validKeyInArray!0 (select (arr!11234 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun d!73247 () Bool)

(declare-fun res!227128 () Bool)

(assert (=> d!73247 (=> res!227128 e!239601)))

(assert (=> d!73247 (= res!227128 (bvsge #b00000000000000000000000000000000 (size!11586 _keys!709)))))

(assert (=> d!73247 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6482) e!239601)))

(declare-fun b!395897 () Bool)

(assert (=> b!395897 (= e!239600 call!27882)))

(assert (= (and d!73247 (not res!227128)) b!395894))

(assert (= (and b!395894 res!227130) b!395896))

(assert (= (and b!395894 res!227129) b!395898))

(assert (= (and b!395898 c!54486) b!395897))

(assert (= (and b!395898 (not c!54486)) b!395895))

(assert (= (or b!395897 b!395895) bm!27879))

(declare-fun m!391703 () Bool)

(assert (=> b!395894 m!391703))

(assert (=> b!395894 m!391703))

(declare-fun m!391705 () Bool)

(assert (=> b!395894 m!391705))

(assert (=> bm!27879 m!391703))

(declare-fun m!391707 () Bool)

(assert (=> bm!27879 m!391707))

(assert (=> b!395896 m!391703))

(assert (=> b!395896 m!391703))

(declare-fun m!391709 () Bool)

(assert (=> b!395896 m!391709))

(assert (=> b!395898 m!391703))

(assert (=> b!395898 m!391703))

(assert (=> b!395898 m!391705))

(assert (=> b!395833 d!73247))

(declare-fun d!73249 () Bool)

(declare-fun res!227135 () Bool)

(declare-fun e!239610 () Bool)

(assert (=> d!73249 (=> res!227135 e!239610)))

(assert (=> d!73249 (= res!227135 (bvsge #b00000000000000000000000000000000 (size!11586 _keys!709)))))

(assert (=> d!73249 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!239610)))

(declare-fun bm!27882 () Bool)

(declare-fun call!27885 () Bool)

(assert (=> bm!27882 (= call!27885 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!395907 () Bool)

(declare-fun e!239612 () Bool)

(assert (=> b!395907 (= e!239610 e!239612)))

(declare-fun c!54489 () Bool)

(assert (=> b!395907 (= c!54489 (validKeyInArray!0 (select (arr!11234 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!395908 () Bool)

(declare-fun e!239611 () Bool)

(assert (=> b!395908 (= e!239611 call!27885)))

(declare-fun b!395909 () Bool)

(assert (=> b!395909 (= e!239612 call!27885)))

(declare-fun b!395910 () Bool)

(assert (=> b!395910 (= e!239612 e!239611)))

(declare-fun lt!187074 () (_ BitVec 64))

(assert (=> b!395910 (= lt!187074 (select (arr!11234 _keys!709) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!12031 0))(
  ( (Unit!12032) )
))
(declare-fun lt!187076 () Unit!12031)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23571 (_ BitVec 64) (_ BitVec 32)) Unit!12031)

(assert (=> b!395910 (= lt!187076 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!187074 #b00000000000000000000000000000000))))

(assert (=> b!395910 (arrayContainsKey!0 _keys!709 lt!187074 #b00000000000000000000000000000000)))

(declare-fun lt!187075 () Unit!12031)

(assert (=> b!395910 (= lt!187075 lt!187076)))

(declare-fun res!227136 () Bool)

(declare-datatypes ((SeekEntryResult!3513 0))(
  ( (MissingZero!3513 (index!16231 (_ BitVec 32))) (Found!3513 (index!16232 (_ BitVec 32))) (Intermediate!3513 (undefined!4325 Bool) (index!16233 (_ BitVec 32)) (x!38666 (_ BitVec 32))) (Undefined!3513) (MissingVacant!3513 (index!16234 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23571 (_ BitVec 32)) SeekEntryResult!3513)

(assert (=> b!395910 (= res!227136 (= (seekEntryOrOpen!0 (select (arr!11234 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3513 #b00000000000000000000000000000000)))))

(assert (=> b!395910 (=> (not res!227136) (not e!239611))))

(assert (= (and d!73249 (not res!227135)) b!395907))

(assert (= (and b!395907 c!54489) b!395910))

(assert (= (and b!395907 (not c!54489)) b!395909))

(assert (= (and b!395910 res!227136) b!395908))

(assert (= (or b!395908 b!395909) bm!27882))

(declare-fun m!391711 () Bool)

(assert (=> bm!27882 m!391711))

(assert (=> b!395907 m!391703))

(assert (=> b!395907 m!391703))

(assert (=> b!395907 m!391705))

(assert (=> b!395910 m!391703))

(declare-fun m!391713 () Bool)

(assert (=> b!395910 m!391713))

(declare-fun m!391715 () Bool)

(assert (=> b!395910 m!391715))

(assert (=> b!395910 m!391703))

(declare-fun m!391717 () Bool)

(assert (=> b!395910 m!391717))

(assert (=> b!395828 d!73249))

(declare-fun d!73251 () Bool)

(declare-fun res!227137 () Bool)

(declare-fun e!239613 () Bool)

(assert (=> d!73251 (=> res!227137 e!239613)))

(assert (=> d!73251 (= res!227137 (bvsge #b00000000000000000000000000000000 (size!11586 (array!23572 (store (arr!11234 _keys!709) i!563 k0!794) (size!11586 _keys!709)))))))

(assert (=> d!73251 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!23572 (store (arr!11234 _keys!709) i!563 k0!794) (size!11586 _keys!709)) mask!1025) e!239613)))

(declare-fun call!27886 () Bool)

(declare-fun bm!27883 () Bool)

(assert (=> bm!27883 (= call!27886 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!23572 (store (arr!11234 _keys!709) i!563 k0!794) (size!11586 _keys!709)) mask!1025))))

(declare-fun b!395911 () Bool)

(declare-fun e!239615 () Bool)

(assert (=> b!395911 (= e!239613 e!239615)))

(declare-fun c!54490 () Bool)

(assert (=> b!395911 (= c!54490 (validKeyInArray!0 (select (arr!11234 (array!23572 (store (arr!11234 _keys!709) i!563 k0!794) (size!11586 _keys!709))) #b00000000000000000000000000000000)))))

(declare-fun b!395912 () Bool)

(declare-fun e!239614 () Bool)

(assert (=> b!395912 (= e!239614 call!27886)))

(declare-fun b!395913 () Bool)

(assert (=> b!395913 (= e!239615 call!27886)))

(declare-fun b!395914 () Bool)

(assert (=> b!395914 (= e!239615 e!239614)))

(declare-fun lt!187077 () (_ BitVec 64))

(assert (=> b!395914 (= lt!187077 (select (arr!11234 (array!23572 (store (arr!11234 _keys!709) i!563 k0!794) (size!11586 _keys!709))) #b00000000000000000000000000000000))))

(declare-fun lt!187079 () Unit!12031)

(assert (=> b!395914 (= lt!187079 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23572 (store (arr!11234 _keys!709) i!563 k0!794) (size!11586 _keys!709)) lt!187077 #b00000000000000000000000000000000))))

(assert (=> b!395914 (arrayContainsKey!0 (array!23572 (store (arr!11234 _keys!709) i!563 k0!794) (size!11586 _keys!709)) lt!187077 #b00000000000000000000000000000000)))

(declare-fun lt!187078 () Unit!12031)

(assert (=> b!395914 (= lt!187078 lt!187079)))

(declare-fun res!227138 () Bool)

(assert (=> b!395914 (= res!227138 (= (seekEntryOrOpen!0 (select (arr!11234 (array!23572 (store (arr!11234 _keys!709) i!563 k0!794) (size!11586 _keys!709))) #b00000000000000000000000000000000) (array!23572 (store (arr!11234 _keys!709) i!563 k0!794) (size!11586 _keys!709)) mask!1025) (Found!3513 #b00000000000000000000000000000000)))))

(assert (=> b!395914 (=> (not res!227138) (not e!239614))))

(assert (= (and d!73251 (not res!227137)) b!395911))

(assert (= (and b!395911 c!54490) b!395914))

(assert (= (and b!395911 (not c!54490)) b!395913))

(assert (= (and b!395914 res!227138) b!395912))

(assert (= (or b!395912 b!395913) bm!27883))

(declare-fun m!391719 () Bool)

(assert (=> bm!27883 m!391719))

(declare-fun m!391721 () Bool)

(assert (=> b!395911 m!391721))

(assert (=> b!395911 m!391721))

(declare-fun m!391723 () Bool)

(assert (=> b!395911 m!391723))

(assert (=> b!395914 m!391721))

(declare-fun m!391725 () Bool)

(assert (=> b!395914 m!391725))

(declare-fun m!391727 () Bool)

(assert (=> b!395914 m!391727))

(assert (=> b!395914 m!391721))

(declare-fun m!391729 () Bool)

(assert (=> b!395914 m!391729))

(assert (=> b!395835 d!73251))

(declare-fun d!73253 () Bool)

(assert (=> d!73253 (= (array_inv!8226 _values!549) (bvsge (size!11587 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!38398 d!73253))

(declare-fun d!73255 () Bool)

(assert (=> d!73255 (= (array_inv!8227 _keys!709) (bvsge (size!11586 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!38398 d!73255))

(declare-fun d!73257 () Bool)

(assert (=> d!73257 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!395841 d!73257))

(declare-fun d!73259 () Bool)

(declare-fun res!227143 () Bool)

(declare-fun e!239620 () Bool)

(assert (=> d!73259 (=> res!227143 e!239620)))

(assert (=> d!73259 (= res!227143 (= (select (arr!11234 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!73259 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!239620)))

(declare-fun b!395919 () Bool)

(declare-fun e!239621 () Bool)

(assert (=> b!395919 (= e!239620 e!239621)))

(declare-fun res!227144 () Bool)

(assert (=> b!395919 (=> (not res!227144) (not e!239621))))

(assert (=> b!395919 (= res!227144 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11586 _keys!709)))))

(declare-fun b!395920 () Bool)

(assert (=> b!395920 (= e!239621 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!73259 (not res!227143)) b!395919))

(assert (= (and b!395919 res!227144) b!395920))

(assert (=> d!73259 m!391703))

(declare-fun m!391731 () Bool)

(assert (=> b!395920 m!391731))

(assert (=> b!395838 d!73259))

(declare-fun d!73261 () Bool)

(declare-fun res!227149 () Bool)

(declare-fun e!239626 () Bool)

(assert (=> d!73261 (=> res!227149 e!239626)))

(assert (=> d!73261 (= res!227149 ((_ is Nil!6482) Nil!6482))))

(assert (=> d!73261 (= (noDuplicate!197 Nil!6482) e!239626)))

(declare-fun b!395925 () Bool)

(declare-fun e!239627 () Bool)

(assert (=> b!395925 (= e!239626 e!239627)))

(declare-fun res!227150 () Bool)

(assert (=> b!395925 (=> (not res!227150) (not e!239627))))

(assert (=> b!395925 (= res!227150 (not (contains!2483 (t!11667 Nil!6482) (h!7337 Nil!6482))))))

(declare-fun b!395926 () Bool)

(assert (=> b!395926 (= e!239627 (noDuplicate!197 (t!11667 Nil!6482)))))

(assert (= (and d!73261 (not res!227149)) b!395925))

(assert (= (and b!395925 res!227150) b!395926))

(declare-fun m!391733 () Bool)

(assert (=> b!395925 m!391733))

(declare-fun m!391735 () Bool)

(assert (=> b!395926 m!391735))

(assert (=> b!395837 d!73261))

(declare-fun d!73263 () Bool)

(assert (=> d!73263 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!395832 d!73263))

(declare-fun mapIsEmpty!16386 () Bool)

(declare-fun mapRes!16386 () Bool)

(assert (=> mapIsEmpty!16386 mapRes!16386))

(declare-fun mapNonEmpty!16386 () Bool)

(declare-fun tp!32181 () Bool)

(declare-fun e!239633 () Bool)

(assert (=> mapNonEmpty!16386 (= mapRes!16386 (and tp!32181 e!239633))))

(declare-fun mapKey!16386 () (_ BitVec 32))

(declare-fun mapValue!16386 () ValueCell!4578)

(declare-fun mapRest!16386 () (Array (_ BitVec 32) ValueCell!4578))

(assert (=> mapNonEmpty!16386 (= mapRest!16380 (store mapRest!16386 mapKey!16386 mapValue!16386))))

(declare-fun b!395934 () Bool)

(declare-fun e!239632 () Bool)

(assert (=> b!395934 (= e!239632 tp_is_empty!9843)))

(declare-fun b!395933 () Bool)

(assert (=> b!395933 (= e!239633 tp_is_empty!9843)))

(declare-fun condMapEmpty!16386 () Bool)

(declare-fun mapDefault!16386 () ValueCell!4578)

(assert (=> mapNonEmpty!16380 (= condMapEmpty!16386 (= mapRest!16380 ((as const (Array (_ BitVec 32) ValueCell!4578)) mapDefault!16386)))))

(assert (=> mapNonEmpty!16380 (= tp!32175 (and e!239632 mapRes!16386))))

(assert (= (and mapNonEmpty!16380 condMapEmpty!16386) mapIsEmpty!16386))

(assert (= (and mapNonEmpty!16380 (not condMapEmpty!16386)) mapNonEmpty!16386))

(assert (= (and mapNonEmpty!16386 ((_ is ValueCellFull!4578) mapValue!16386)) b!395933))

(assert (= (and mapNonEmpty!16380 ((_ is ValueCellFull!4578) mapDefault!16386)) b!395934))

(declare-fun m!391737 () Bool)

(assert (=> mapNonEmpty!16386 m!391737))

(check-sat (not b!395907) (not b!395926) tp_is_empty!9843 (not bm!27879) (not b!395925) (not b!395896) (not b!395894) (not bm!27883) (not bm!27882) (not b!395898) (not mapNonEmpty!16386) (not b!395920) (not b!395911) (not b!395910) (not b!395914))
(check-sat)
