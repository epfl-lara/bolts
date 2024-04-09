; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19994 () Bool)

(assert start!19994)

(declare-fun b!195839 () Bool)

(declare-fun e!128919 () Bool)

(declare-fun e!128921 () Bool)

(declare-fun mapRes!7850 () Bool)

(assert (=> b!195839 (= e!128919 (and e!128921 mapRes!7850))))

(declare-fun condMapEmpty!7850 () Bool)

(declare-datatypes ((V!5683 0))(
  ( (V!5684 (val!2308 Int)) )
))
(declare-datatypes ((ValueCell!1920 0))(
  ( (ValueCellFull!1920 (v!4273 V!5683)) (EmptyCell!1920) )
))
(declare-datatypes ((array!8310 0))(
  ( (array!8311 (arr!3908 (Array (_ BitVec 32) ValueCell!1920)) (size!4233 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8310)

(declare-fun mapDefault!7850 () ValueCell!1920)

(assert (=> b!195839 (= condMapEmpty!7850 (= (arr!3908 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1920)) mapDefault!7850)))))

(declare-fun b!195840 () Bool)

(declare-fun res!92416 () Bool)

(declare-fun e!128917 () Bool)

(assert (=> b!195840 (=> (not res!92416) (not e!128917))))

(declare-datatypes ((array!8312 0))(
  ( (array!8313 (arr!3909 (Array (_ BitVec 32) (_ BitVec 64))) (size!4234 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8312)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!195840 (= res!92416 (and (= (size!4233 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4234 _keys!825) (size!4233 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!195841 () Bool)

(declare-fun res!92415 () Bool)

(assert (=> b!195841 (=> (not res!92415) (not e!128917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8312 (_ BitVec 32)) Bool)

(assert (=> b!195841 (= res!92415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!195842 () Bool)

(declare-fun e!128918 () Bool)

(declare-fun tp_is_empty!4527 () Bool)

(assert (=> b!195842 (= e!128918 tp_is_empty!4527)))

(declare-fun mapNonEmpty!7850 () Bool)

(declare-fun tp!17138 () Bool)

(assert (=> mapNonEmpty!7850 (= mapRes!7850 (and tp!17138 e!128918))))

(declare-fun mapValue!7850 () ValueCell!1920)

(declare-fun mapKey!7850 () (_ BitVec 32))

(declare-fun mapRest!7850 () (Array (_ BitVec 32) ValueCell!1920))

(assert (=> mapNonEmpty!7850 (= (arr!3908 _values!649) (store mapRest!7850 mapKey!7850 mapValue!7850))))

(declare-fun b!195843 () Bool)

(assert (=> b!195843 (= e!128921 tp_is_empty!4527)))

(declare-fun mapIsEmpty!7850 () Bool)

(assert (=> mapIsEmpty!7850 mapRes!7850))

(declare-fun b!195844 () Bool)

(assert (=> b!195844 (= e!128917 (and (bvsle #b00000000000000000000000000000000 (size!4234 _keys!825)) (bvsge (size!4234 _keys!825) #b01111111111111111111111111111111)))))

(declare-fun res!92417 () Bool)

(assert (=> start!19994 (=> (not res!92417) (not e!128917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!19994 (= res!92417 (validMask!0 mask!1149))))

(assert (=> start!19994 e!128917))

(assert (=> start!19994 true))

(declare-fun array_inv!2529 (array!8310) Bool)

(assert (=> start!19994 (and (array_inv!2529 _values!649) e!128919)))

(declare-fun array_inv!2530 (array!8312) Bool)

(assert (=> start!19994 (array_inv!2530 _keys!825)))

(assert (= (and start!19994 res!92417) b!195840))

(assert (= (and b!195840 res!92416) b!195841))

(assert (= (and b!195841 res!92415) b!195844))

(assert (= (and b!195839 condMapEmpty!7850) mapIsEmpty!7850))

(assert (= (and b!195839 (not condMapEmpty!7850)) mapNonEmpty!7850))

(get-info :version)

(assert (= (and mapNonEmpty!7850 ((_ is ValueCellFull!1920) mapValue!7850)) b!195842))

(assert (= (and b!195839 ((_ is ValueCellFull!1920) mapDefault!7850)) b!195843))

(assert (= start!19994 b!195839))

(declare-fun m!223333 () Bool)

(assert (=> b!195841 m!223333))

(declare-fun m!223335 () Bool)

(assert (=> mapNonEmpty!7850 m!223335))

(declare-fun m!223337 () Bool)

(assert (=> start!19994 m!223337))

(declare-fun m!223339 () Bool)

(assert (=> start!19994 m!223339))

(declare-fun m!223341 () Bool)

(assert (=> start!19994 m!223341))

(check-sat (not b!195841) (not start!19994) (not mapNonEmpty!7850) tp_is_empty!4527)
(check-sat)
(get-model)

(declare-fun bm!19765 () Bool)

(declare-fun call!19768 () Bool)

(assert (=> bm!19765 (= call!19768 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun d!57459 () Bool)

(declare-fun res!92431 () Bool)

(declare-fun e!128945 () Bool)

(assert (=> d!57459 (=> res!92431 e!128945)))

(assert (=> d!57459 (= res!92431 (bvsge #b00000000000000000000000000000000 (size!4234 _keys!825)))))

(assert (=> d!57459 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!128945)))

(declare-fun b!195871 () Bool)

(declare-fun e!128943 () Bool)

(assert (=> b!195871 (= e!128943 call!19768)))

(declare-fun b!195872 () Bool)

(declare-fun e!128944 () Bool)

(assert (=> b!195872 (= e!128944 call!19768)))

(declare-fun b!195873 () Bool)

(assert (=> b!195873 (= e!128945 e!128944)))

(declare-fun c!35410 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!195873 (= c!35410 (validKeyInArray!0 (select (arr!3909 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!195874 () Bool)

(assert (=> b!195874 (= e!128944 e!128943)))

(declare-fun lt!97565 () (_ BitVec 64))

(assert (=> b!195874 (= lt!97565 (select (arr!3909 _keys!825) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5941 0))(
  ( (Unit!5942) )
))
(declare-fun lt!97566 () Unit!5941)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8312 (_ BitVec 64) (_ BitVec 32)) Unit!5941)

(assert (=> b!195874 (= lt!97566 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!97565 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!8312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!195874 (arrayContainsKey!0 _keys!825 lt!97565 #b00000000000000000000000000000000)))

(declare-fun lt!97564 () Unit!5941)

(assert (=> b!195874 (= lt!97564 lt!97566)))

(declare-fun res!92432 () Bool)

(declare-datatypes ((SeekEntryResult!711 0))(
  ( (MissingZero!711 (index!5014 (_ BitVec 32))) (Found!711 (index!5015 (_ BitVec 32))) (Intermediate!711 (undefined!1523 Bool) (index!5016 (_ BitVec 32)) (x!20822 (_ BitVec 32))) (Undefined!711) (MissingVacant!711 (index!5017 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8312 (_ BitVec 32)) SeekEntryResult!711)

(assert (=> b!195874 (= res!92432 (= (seekEntryOrOpen!0 (select (arr!3909 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!711 #b00000000000000000000000000000000)))))

(assert (=> b!195874 (=> (not res!92432) (not e!128943))))

(assert (= (and d!57459 (not res!92431)) b!195873))

(assert (= (and b!195873 c!35410) b!195874))

(assert (= (and b!195873 (not c!35410)) b!195872))

(assert (= (and b!195874 res!92432) b!195871))

(assert (= (or b!195871 b!195872) bm!19765))

(declare-fun m!223353 () Bool)

(assert (=> bm!19765 m!223353))

(declare-fun m!223355 () Bool)

(assert (=> b!195873 m!223355))

(assert (=> b!195873 m!223355))

(declare-fun m!223357 () Bool)

(assert (=> b!195873 m!223357))

(assert (=> b!195874 m!223355))

(declare-fun m!223359 () Bool)

(assert (=> b!195874 m!223359))

(declare-fun m!223361 () Bool)

(assert (=> b!195874 m!223361))

(assert (=> b!195874 m!223355))

(declare-fun m!223363 () Bool)

(assert (=> b!195874 m!223363))

(assert (=> b!195841 d!57459))

(declare-fun d!57461 () Bool)

(assert (=> d!57461 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!19994 d!57461))

(declare-fun d!57463 () Bool)

(assert (=> d!57463 (= (array_inv!2529 _values!649) (bvsge (size!4233 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!19994 d!57463))

(declare-fun d!57465 () Bool)

(assert (=> d!57465 (= (array_inv!2530 _keys!825) (bvsge (size!4234 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!19994 d!57465))

(declare-fun mapNonEmpty!7856 () Bool)

(declare-fun mapRes!7856 () Bool)

(declare-fun tp!17144 () Bool)

(declare-fun e!128951 () Bool)

(assert (=> mapNonEmpty!7856 (= mapRes!7856 (and tp!17144 e!128951))))

(declare-fun mapKey!7856 () (_ BitVec 32))

(declare-fun mapRest!7856 () (Array (_ BitVec 32) ValueCell!1920))

(declare-fun mapValue!7856 () ValueCell!1920)

(assert (=> mapNonEmpty!7856 (= mapRest!7850 (store mapRest!7856 mapKey!7856 mapValue!7856))))

(declare-fun b!195882 () Bool)

(declare-fun e!128950 () Bool)

(assert (=> b!195882 (= e!128950 tp_is_empty!4527)))

(declare-fun condMapEmpty!7856 () Bool)

(declare-fun mapDefault!7856 () ValueCell!1920)

(assert (=> mapNonEmpty!7850 (= condMapEmpty!7856 (= mapRest!7850 ((as const (Array (_ BitVec 32) ValueCell!1920)) mapDefault!7856)))))

(assert (=> mapNonEmpty!7850 (= tp!17138 (and e!128950 mapRes!7856))))

(declare-fun mapIsEmpty!7856 () Bool)

(assert (=> mapIsEmpty!7856 mapRes!7856))

(declare-fun b!195881 () Bool)

(assert (=> b!195881 (= e!128951 tp_is_empty!4527)))

(assert (= (and mapNonEmpty!7850 condMapEmpty!7856) mapIsEmpty!7856))

(assert (= (and mapNonEmpty!7850 (not condMapEmpty!7856)) mapNonEmpty!7856))

(assert (= (and mapNonEmpty!7856 ((_ is ValueCellFull!1920) mapValue!7856)) b!195881))

(assert (= (and mapNonEmpty!7850 ((_ is ValueCellFull!1920) mapDefault!7856)) b!195882))

(declare-fun m!223365 () Bool)

(assert (=> mapNonEmpty!7856 m!223365))

(check-sat (not b!195874) (not bm!19765) tp_is_empty!4527 (not mapNonEmpty!7856) (not b!195873))
(check-sat)
