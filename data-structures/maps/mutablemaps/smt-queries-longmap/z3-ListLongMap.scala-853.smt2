; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20228 () Bool)

(assert start!20228)

(declare-fun b_free!4875 () Bool)

(declare-fun b_next!4875 () Bool)

(assert (=> start!20228 (= b_free!4875 (not b_next!4875))))

(declare-fun tp!17657 () Bool)

(declare-fun b_and!11639 () Bool)

(assert (=> start!20228 (= tp!17657 b_and!11639)))

(declare-fun b!198630 () Bool)

(declare-fun res!94251 () Bool)

(declare-fun e!130524 () Bool)

(assert (=> b!198630 (=> (not res!94251) (not e!130524))))

(declare-datatypes ((array!8706 0))(
  ( (array!8707 (arr!4103 (Array (_ BitVec 32) (_ BitVec 64))) (size!4428 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8706)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198630 (= res!94251 (= (select (arr!4103 _keys!825) i!601) k0!843))))

(declare-fun b!198631 () Bool)

(declare-fun res!94249 () Bool)

(assert (=> b!198631 (=> (not res!94249) (not e!130524))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5955 0))(
  ( (V!5956 (val!2410 Int)) )
))
(declare-datatypes ((ValueCell!2022 0))(
  ( (ValueCellFull!2022 (v!4376 V!5955)) (EmptyCell!2022) )
))
(declare-datatypes ((array!8708 0))(
  ( (array!8709 (arr!4104 (Array (_ BitVec 32) ValueCell!2022)) (size!4429 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8708)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!198631 (= res!94249 (and (= (size!4429 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4428 _keys!825) (size!4429 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198632 () Bool)

(declare-fun res!94247 () Bool)

(assert (=> b!198632 (=> (not res!94247) (not e!130524))))

(assert (=> b!198632 (= res!94247 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4428 _keys!825))))))

(declare-fun res!94246 () Bool)

(assert (=> start!20228 (=> (not res!94246) (not e!130524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20228 (= res!94246 (validMask!0 mask!1149))))

(assert (=> start!20228 e!130524))

(declare-fun e!130521 () Bool)

(declare-fun array_inv!2679 (array!8708) Bool)

(assert (=> start!20228 (and (array_inv!2679 _values!649) e!130521)))

(assert (=> start!20228 true))

(declare-fun tp_is_empty!4731 () Bool)

(assert (=> start!20228 tp_is_empty!4731))

(declare-fun array_inv!2680 (array!8706) Bool)

(assert (=> start!20228 (array_inv!2680 _keys!825)))

(assert (=> start!20228 tp!17657))

(declare-fun b!198633 () Bool)

(declare-fun res!94252 () Bool)

(assert (=> b!198633 (=> (not res!94252) (not e!130524))))

(declare-datatypes ((List!2588 0))(
  ( (Nil!2585) (Cons!2584 (h!3226 (_ BitVec 64)) (t!7527 List!2588)) )
))
(declare-fun arrayNoDuplicates!0 (array!8706 (_ BitVec 32) List!2588) Bool)

(assert (=> b!198633 (= res!94252 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2585))))

(declare-fun b!198634 () Bool)

(declare-fun e!130523 () Bool)

(declare-fun mapRes!8165 () Bool)

(assert (=> b!198634 (= e!130521 (and e!130523 mapRes!8165))))

(declare-fun condMapEmpty!8165 () Bool)

(declare-fun mapDefault!8165 () ValueCell!2022)

(assert (=> b!198634 (= condMapEmpty!8165 (= (arr!4104 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2022)) mapDefault!8165)))))

(declare-fun b!198635 () Bool)

(declare-fun e!130522 () Bool)

(assert (=> b!198635 (= e!130522 tp_is_empty!4731)))

(declare-fun b!198636 () Bool)

(assert (=> b!198636 (= e!130523 tp_is_empty!4731)))

(declare-fun mapIsEmpty!8165 () Bool)

(assert (=> mapIsEmpty!8165 mapRes!8165))

(declare-fun mapNonEmpty!8165 () Bool)

(declare-fun tp!17656 () Bool)

(assert (=> mapNonEmpty!8165 (= mapRes!8165 (and tp!17656 e!130522))))

(declare-fun mapKey!8165 () (_ BitVec 32))

(declare-fun mapValue!8165 () ValueCell!2022)

(declare-fun mapRest!8165 () (Array (_ BitVec 32) ValueCell!2022))

(assert (=> mapNonEmpty!8165 (= (arr!4104 _values!649) (store mapRest!8165 mapKey!8165 mapValue!8165))))

(declare-fun b!198637 () Bool)

(declare-fun res!94248 () Bool)

(assert (=> b!198637 (=> (not res!94248) (not e!130524))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198637 (= res!94248 (validKeyInArray!0 k0!843))))

(declare-fun b!198638 () Bool)

(declare-fun res!94250 () Bool)

(assert (=> b!198638 (=> (not res!94250) (not e!130524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8706 (_ BitVec 32)) Bool)

(assert (=> b!198638 (= res!94250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198639 () Bool)

(assert (=> b!198639 (= e!130524 (not true))))

(declare-datatypes ((tuple2!3650 0))(
  ( (tuple2!3651 (_1!1835 (_ BitVec 64)) (_2!1835 V!5955)) )
))
(declare-datatypes ((List!2589 0))(
  ( (Nil!2586) (Cons!2585 (h!3227 tuple2!3650) (t!7528 List!2589)) )
))
(declare-datatypes ((ListLongMap!2577 0))(
  ( (ListLongMap!2578 (toList!1304 List!2589)) )
))
(declare-fun lt!98014 () ListLongMap!2577)

(declare-fun lt!98015 () ListLongMap!2577)

(assert (=> b!198639 (and (= lt!98014 lt!98015) (= lt!98015 lt!98014))))

(declare-fun v!520 () V!5955)

(declare-fun lt!98016 () ListLongMap!2577)

(declare-fun +!321 (ListLongMap!2577 tuple2!3650) ListLongMap!2577)

(assert (=> b!198639 (= lt!98015 (+!321 lt!98016 (tuple2!3651 k0!843 v!520)))))

(declare-datatypes ((Unit!5951 0))(
  ( (Unit!5952) )
))
(declare-fun lt!98017 () Unit!5951)

(declare-fun zeroValue!615 () V!5955)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5955)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!3 (array!8706 array!8708 (_ BitVec 32) (_ BitVec 32) V!5955 V!5955 (_ BitVec 32) (_ BitVec 64) V!5955 (_ BitVec 32) Int) Unit!5951)

(assert (=> b!198639 (= lt!98017 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!3 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!261 (array!8706 array!8708 (_ BitVec 32) (_ BitVec 32) V!5955 V!5955 (_ BitVec 32) Int) ListLongMap!2577)

(assert (=> b!198639 (= lt!98014 (getCurrentListMapNoExtraKeys!261 _keys!825 (array!8709 (store (arr!4104 _values!649) i!601 (ValueCellFull!2022 v!520)) (size!4429 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!198639 (= lt!98016 (getCurrentListMapNoExtraKeys!261 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20228 res!94246) b!198631))

(assert (= (and b!198631 res!94249) b!198638))

(assert (= (and b!198638 res!94250) b!198633))

(assert (= (and b!198633 res!94252) b!198632))

(assert (= (and b!198632 res!94247) b!198637))

(assert (= (and b!198637 res!94248) b!198630))

(assert (= (and b!198630 res!94251) b!198639))

(assert (= (and b!198634 condMapEmpty!8165) mapIsEmpty!8165))

(assert (= (and b!198634 (not condMapEmpty!8165)) mapNonEmpty!8165))

(get-info :version)

(assert (= (and mapNonEmpty!8165 ((_ is ValueCellFull!2022) mapValue!8165)) b!198635))

(assert (= (and b!198634 ((_ is ValueCellFull!2022) mapDefault!8165)) b!198636))

(assert (= start!20228 b!198634))

(declare-fun m!225215 () Bool)

(assert (=> b!198630 m!225215))

(declare-fun m!225217 () Bool)

(assert (=> b!198633 m!225217))

(declare-fun m!225219 () Bool)

(assert (=> b!198638 m!225219))

(declare-fun m!225221 () Bool)

(assert (=> b!198639 m!225221))

(declare-fun m!225223 () Bool)

(assert (=> b!198639 m!225223))

(declare-fun m!225225 () Bool)

(assert (=> b!198639 m!225225))

(declare-fun m!225227 () Bool)

(assert (=> b!198639 m!225227))

(declare-fun m!225229 () Bool)

(assert (=> b!198639 m!225229))

(declare-fun m!225231 () Bool)

(assert (=> start!20228 m!225231))

(declare-fun m!225233 () Bool)

(assert (=> start!20228 m!225233))

(declare-fun m!225235 () Bool)

(assert (=> start!20228 m!225235))

(declare-fun m!225237 () Bool)

(assert (=> b!198637 m!225237))

(declare-fun m!225239 () Bool)

(assert (=> mapNonEmpty!8165 m!225239))

(check-sat (not mapNonEmpty!8165) b_and!11639 tp_is_empty!4731 (not b!198638) (not start!20228) (not b!198639) (not b_next!4875) (not b!198633) (not b!198637))
(check-sat b_and!11639 (not b_next!4875))
