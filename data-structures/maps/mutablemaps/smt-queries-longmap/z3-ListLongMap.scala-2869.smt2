; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41314 () Bool)

(assert start!41314)

(declare-fun b!461784 () Bool)

(declare-fun e!269379 () Bool)

(declare-fun tp_is_empty!12453 () Bool)

(assert (=> b!461784 (= e!269379 tp_is_empty!12453)))

(declare-fun mapIsEmpty!20341 () Bool)

(declare-fun mapRes!20341 () Bool)

(assert (=> mapIsEmpty!20341 mapRes!20341))

(declare-fun mapNonEmpty!20341 () Bool)

(declare-fun tp!39160 () Bool)

(declare-fun e!269380 () Bool)

(assert (=> mapNonEmpty!20341 (= mapRes!20341 (and tp!39160 e!269380))))

(declare-datatypes ((V!17709 0))(
  ( (V!17710 (val!6271 Int)) )
))
(declare-datatypes ((ValueCell!5883 0))(
  ( (ValueCellFull!5883 (v!8553 V!17709)) (EmptyCell!5883) )
))
(declare-datatypes ((array!28671 0))(
  ( (array!28672 (arr!13769 (Array (_ BitVec 32) ValueCell!5883)) (size!14121 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28671)

(declare-fun mapValue!20341 () ValueCell!5883)

(declare-fun mapRest!20341 () (Array (_ BitVec 32) ValueCell!5883))

(declare-fun mapKey!20341 () (_ BitVec 32))

(assert (=> mapNonEmpty!20341 (= (arr!13769 _values!833) (store mapRest!20341 mapKey!20341 mapValue!20341))))

(declare-fun b!461786 () Bool)

(declare-fun res!276275 () Bool)

(declare-fun e!269377 () Bool)

(assert (=> b!461786 (=> (not res!276275) (not e!269377))))

(declare-datatypes ((array!28673 0))(
  ( (array!28674 (arr!13770 (Array (_ BitVec 32) (_ BitVec 64))) (size!14122 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28673)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28673 (_ BitVec 32)) Bool)

(assert (=> b!461786 (= res!276275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!461787 () Bool)

(assert (=> b!461787 (= e!269380 tp_is_empty!12453)))

(declare-fun b!461788 () Bool)

(declare-fun res!276274 () Bool)

(assert (=> b!461788 (=> (not res!276274) (not e!269377))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!461788 (= res!276274 (and (= (size!14121 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14122 _keys!1025) (size!14121 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!461789 () Bool)

(declare-fun e!269381 () Bool)

(assert (=> b!461789 (= e!269381 (and e!269379 mapRes!20341))))

(declare-fun condMapEmpty!20341 () Bool)

(declare-fun mapDefault!20341 () ValueCell!5883)

(assert (=> b!461789 (= condMapEmpty!20341 (= (arr!13769 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5883)) mapDefault!20341)))))

(declare-fun b!461785 () Bool)

(assert (=> b!461785 (= e!269377 (and (bvsle #b00000000000000000000000000000000 (size!14122 _keys!1025)) (bvsge (size!14122 _keys!1025) #b01111111111111111111111111111111)))))

(declare-fun res!276276 () Bool)

(assert (=> start!41314 (=> (not res!276276) (not e!269377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41314 (= res!276276 (validMask!0 mask!1365))))

(assert (=> start!41314 e!269377))

(assert (=> start!41314 true))

(declare-fun array_inv!9940 (array!28673) Bool)

(assert (=> start!41314 (array_inv!9940 _keys!1025)))

(declare-fun array_inv!9941 (array!28671) Bool)

(assert (=> start!41314 (and (array_inv!9941 _values!833) e!269381)))

(assert (= (and start!41314 res!276276) b!461788))

(assert (= (and b!461788 res!276274) b!461786))

(assert (= (and b!461786 res!276275) b!461785))

(assert (= (and b!461789 condMapEmpty!20341) mapIsEmpty!20341))

(assert (= (and b!461789 (not condMapEmpty!20341)) mapNonEmpty!20341))

(get-info :version)

(assert (= (and mapNonEmpty!20341 ((_ is ValueCellFull!5883) mapValue!20341)) b!461787))

(assert (= (and b!461789 ((_ is ValueCellFull!5883) mapDefault!20341)) b!461784))

(assert (= start!41314 b!461789))

(declare-fun m!444921 () Bool)

(assert (=> mapNonEmpty!20341 m!444921))

(declare-fun m!444923 () Bool)

(assert (=> b!461786 m!444923))

(declare-fun m!444925 () Bool)

(assert (=> start!41314 m!444925))

(declare-fun m!444927 () Bool)

(assert (=> start!41314 m!444927))

(declare-fun m!444929 () Bool)

(assert (=> start!41314 m!444929))

(check-sat (not b!461786) (not start!41314) (not mapNonEmpty!20341) tp_is_empty!12453)
(check-sat)
(get-model)

(declare-fun b!461816 () Bool)

(declare-fun e!269404 () Bool)

(declare-fun e!269403 () Bool)

(assert (=> b!461816 (= e!269404 e!269403)))

(declare-fun lt!209113 () (_ BitVec 64))

(assert (=> b!461816 (= lt!209113 (select (arr!13770 _keys!1025) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!13387 0))(
  ( (Unit!13388) )
))
(declare-fun lt!209114 () Unit!13387)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28673 (_ BitVec 64) (_ BitVec 32)) Unit!13387)

(assert (=> b!461816 (= lt!209114 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!209113 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!28673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!461816 (arrayContainsKey!0 _keys!1025 lt!209113 #b00000000000000000000000000000000)))

(declare-fun lt!209112 () Unit!13387)

(assert (=> b!461816 (= lt!209112 lt!209114)))

(declare-fun res!276290 () Bool)

(declare-datatypes ((SeekEntryResult!3527 0))(
  ( (MissingZero!3527 (index!16287 (_ BitVec 32))) (Found!3527 (index!16288 (_ BitVec 32))) (Intermediate!3527 (undefined!4339 Bool) (index!16289 (_ BitVec 32)) (x!43046 (_ BitVec 32))) (Undefined!3527) (MissingVacant!3527 (index!16290 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28673 (_ BitVec 32)) SeekEntryResult!3527)

(assert (=> b!461816 (= res!276290 (= (seekEntryOrOpen!0 (select (arr!13770 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3527 #b00000000000000000000000000000000)))))

(assert (=> b!461816 (=> (not res!276290) (not e!269403))))

(declare-fun b!461817 () Bool)

(declare-fun e!269405 () Bool)

(assert (=> b!461817 (= e!269405 e!269404)))

(declare-fun c!56547 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!461817 (= c!56547 (validKeyInArray!0 (select (arr!13770 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!461818 () Bool)

(declare-fun call!30194 () Bool)

(assert (=> b!461818 (= e!269404 call!30194)))

(declare-fun b!461819 () Bool)

(assert (=> b!461819 (= e!269403 call!30194)))

(declare-fun bm!30191 () Bool)

(assert (=> bm!30191 (= call!30194 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun d!74793 () Bool)

(declare-fun res!276291 () Bool)

(assert (=> d!74793 (=> res!276291 e!269405)))

(assert (=> d!74793 (= res!276291 (bvsge #b00000000000000000000000000000000 (size!14122 _keys!1025)))))

(assert (=> d!74793 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!269405)))

(assert (= (and d!74793 (not res!276291)) b!461817))

(assert (= (and b!461817 c!56547) b!461816))

(assert (= (and b!461817 (not c!56547)) b!461818))

(assert (= (and b!461816 res!276290) b!461819))

(assert (= (or b!461819 b!461818) bm!30191))

(declare-fun m!444941 () Bool)

(assert (=> b!461816 m!444941))

(declare-fun m!444943 () Bool)

(assert (=> b!461816 m!444943))

(declare-fun m!444945 () Bool)

(assert (=> b!461816 m!444945))

(assert (=> b!461816 m!444941))

(declare-fun m!444947 () Bool)

(assert (=> b!461816 m!444947))

(assert (=> b!461817 m!444941))

(assert (=> b!461817 m!444941))

(declare-fun m!444949 () Bool)

(assert (=> b!461817 m!444949))

(declare-fun m!444951 () Bool)

(assert (=> bm!30191 m!444951))

(assert (=> b!461786 d!74793))

(declare-fun d!74795 () Bool)

(assert (=> d!74795 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41314 d!74795))

(declare-fun d!74797 () Bool)

(assert (=> d!74797 (= (array_inv!9940 _keys!1025) (bvsge (size!14122 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41314 d!74797))

(declare-fun d!74799 () Bool)

(assert (=> d!74799 (= (array_inv!9941 _values!833) (bvsge (size!14121 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41314 d!74799))

(declare-fun b!461826 () Bool)

(declare-fun e!269410 () Bool)

(assert (=> b!461826 (= e!269410 tp_is_empty!12453)))

(declare-fun condMapEmpty!20347 () Bool)

(declare-fun mapDefault!20347 () ValueCell!5883)

(assert (=> mapNonEmpty!20341 (= condMapEmpty!20347 (= mapRest!20341 ((as const (Array (_ BitVec 32) ValueCell!5883)) mapDefault!20347)))))

(declare-fun e!269411 () Bool)

(declare-fun mapRes!20347 () Bool)

(assert (=> mapNonEmpty!20341 (= tp!39160 (and e!269411 mapRes!20347))))

(declare-fun mapNonEmpty!20347 () Bool)

(declare-fun tp!39166 () Bool)

(assert (=> mapNonEmpty!20347 (= mapRes!20347 (and tp!39166 e!269410))))

(declare-fun mapKey!20347 () (_ BitVec 32))

(declare-fun mapRest!20347 () (Array (_ BitVec 32) ValueCell!5883))

(declare-fun mapValue!20347 () ValueCell!5883)

(assert (=> mapNonEmpty!20347 (= mapRest!20341 (store mapRest!20347 mapKey!20347 mapValue!20347))))

(declare-fun mapIsEmpty!20347 () Bool)

(assert (=> mapIsEmpty!20347 mapRes!20347))

(declare-fun b!461827 () Bool)

(assert (=> b!461827 (= e!269411 tp_is_empty!12453)))

(assert (= (and mapNonEmpty!20341 condMapEmpty!20347) mapIsEmpty!20347))

(assert (= (and mapNonEmpty!20341 (not condMapEmpty!20347)) mapNonEmpty!20347))

(assert (= (and mapNonEmpty!20347 ((_ is ValueCellFull!5883) mapValue!20347)) b!461826))

(assert (= (and mapNonEmpty!20341 ((_ is ValueCellFull!5883) mapDefault!20347)) b!461827))

(declare-fun m!444953 () Bool)

(assert (=> mapNonEmpty!20347 m!444953))

(check-sat (not mapNonEmpty!20347) tp_is_empty!12453 (not bm!30191) (not b!461817) (not b!461816))
(check-sat)
