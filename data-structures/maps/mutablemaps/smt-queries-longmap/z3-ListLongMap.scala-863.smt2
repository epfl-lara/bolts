; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20288 () Bool)

(assert start!20288)

(declare-fun b_free!4935 () Bool)

(declare-fun b_next!4935 () Bool)

(assert (=> start!20288 (= b_free!4935 (not b_next!4935))))

(declare-fun tp!17836 () Bool)

(declare-fun b_and!11699 () Bool)

(assert (=> start!20288 (= tp!17836 b_and!11699)))

(declare-fun b!199530 () Bool)

(declare-fun e!130972 () Bool)

(assert (=> b!199530 (= e!130972 (not true))))

(declare-datatypes ((V!6035 0))(
  ( (V!6036 (val!2440 Int)) )
))
(declare-datatypes ((tuple2!3686 0))(
  ( (tuple2!3687 (_1!1853 (_ BitVec 64)) (_2!1853 V!6035)) )
))
(declare-datatypes ((List!2627 0))(
  ( (Nil!2624) (Cons!2623 (h!3265 tuple2!3686) (t!7566 List!2627)) )
))
(declare-datatypes ((ListLongMap!2613 0))(
  ( (ListLongMap!2614 (toList!1322 List!2627)) )
))
(declare-fun lt!98425 () ListLongMap!2613)

(declare-datatypes ((ValueCell!2052 0))(
  ( (ValueCellFull!2052 (v!4406 V!6035)) (EmptyCell!2052) )
))
(declare-datatypes ((array!8820 0))(
  ( (array!8821 (arr!4160 (Array (_ BitVec 32) ValueCell!2052)) (size!4485 (_ BitVec 32))) )
))
(declare-fun lt!98420 () array!8820)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6035)

(declare-datatypes ((array!8822 0))(
  ( (array!8823 (arr!4161 (Array (_ BitVec 32) (_ BitVec 64))) (size!4486 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8822)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6035)

(declare-fun getCurrentListMap!908 (array!8822 array!8820 (_ BitVec 32) (_ BitVec 32) V!6035 V!6035 (_ BitVec 32) Int) ListLongMap!2613)

(assert (=> b!199530 (= lt!98425 (getCurrentListMap!908 _keys!825 lt!98420 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98422 () ListLongMap!2613)

(declare-fun lt!98423 () ListLongMap!2613)

(assert (=> b!199530 (and (= lt!98422 lt!98423) (= lt!98423 lt!98422))))

(declare-fun v!520 () V!6035)

(declare-fun lt!98421 () ListLongMap!2613)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun +!339 (ListLongMap!2613 tuple2!3686) ListLongMap!2613)

(assert (=> b!199530 (= lt!98423 (+!339 lt!98421 (tuple2!3687 k0!843 v!520)))))

(declare-fun _values!649 () array!8820)

(declare-datatypes ((Unit!5987 0))(
  ( (Unit!5988) )
))
(declare-fun lt!98424 () Unit!5987)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!21 (array!8822 array!8820 (_ BitVec 32) (_ BitVec 32) V!6035 V!6035 (_ BitVec 32) (_ BitVec 64) V!6035 (_ BitVec 32) Int) Unit!5987)

(assert (=> b!199530 (= lt!98424 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!21 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!279 (array!8822 array!8820 (_ BitVec 32) (_ BitVec 32) V!6035 V!6035 (_ BitVec 32) Int) ListLongMap!2613)

(assert (=> b!199530 (= lt!98422 (getCurrentListMapNoExtraKeys!279 _keys!825 lt!98420 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199530 (= lt!98420 (array!8821 (store (arr!4160 _values!649) i!601 (ValueCellFull!2052 v!520)) (size!4485 _values!649)))))

(assert (=> b!199530 (= lt!98421 (getCurrentListMapNoExtraKeys!279 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199531 () Bool)

(declare-fun e!130973 () Bool)

(declare-fun tp_is_empty!4791 () Bool)

(assert (=> b!199531 (= e!130973 tp_is_empty!4791)))

(declare-fun b!199532 () Bool)

(declare-fun e!130974 () Bool)

(declare-fun e!130975 () Bool)

(declare-fun mapRes!8255 () Bool)

(assert (=> b!199532 (= e!130974 (and e!130975 mapRes!8255))))

(declare-fun condMapEmpty!8255 () Bool)

(declare-fun mapDefault!8255 () ValueCell!2052)

(assert (=> b!199532 (= condMapEmpty!8255 (= (arr!4160 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2052)) mapDefault!8255)))))

(declare-fun mapNonEmpty!8255 () Bool)

(declare-fun tp!17837 () Bool)

(assert (=> mapNonEmpty!8255 (= mapRes!8255 (and tp!17837 e!130973))))

(declare-fun mapRest!8255 () (Array (_ BitVec 32) ValueCell!2052))

(declare-fun mapKey!8255 () (_ BitVec 32))

(declare-fun mapValue!8255 () ValueCell!2052)

(assert (=> mapNonEmpty!8255 (= (arr!4160 _values!649) (store mapRest!8255 mapKey!8255 mapValue!8255))))

(declare-fun b!199533 () Bool)

(declare-fun res!94882 () Bool)

(assert (=> b!199533 (=> (not res!94882) (not e!130972))))

(assert (=> b!199533 (= res!94882 (= (select (arr!4161 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8255 () Bool)

(assert (=> mapIsEmpty!8255 mapRes!8255))

(declare-fun res!94877 () Bool)

(assert (=> start!20288 (=> (not res!94877) (not e!130972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20288 (= res!94877 (validMask!0 mask!1149))))

(assert (=> start!20288 e!130972))

(declare-fun array_inv!2723 (array!8820) Bool)

(assert (=> start!20288 (and (array_inv!2723 _values!649) e!130974)))

(assert (=> start!20288 true))

(assert (=> start!20288 tp_is_empty!4791))

(declare-fun array_inv!2724 (array!8822) Bool)

(assert (=> start!20288 (array_inv!2724 _keys!825)))

(assert (=> start!20288 tp!17836))

(declare-fun b!199534 () Bool)

(assert (=> b!199534 (= e!130975 tp_is_empty!4791)))

(declare-fun b!199535 () Bool)

(declare-fun res!94876 () Bool)

(assert (=> b!199535 (=> (not res!94876) (not e!130972))))

(declare-datatypes ((List!2628 0))(
  ( (Nil!2625) (Cons!2624 (h!3266 (_ BitVec 64)) (t!7567 List!2628)) )
))
(declare-fun arrayNoDuplicates!0 (array!8822 (_ BitVec 32) List!2628) Bool)

(assert (=> b!199535 (= res!94876 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2625))))

(declare-fun b!199536 () Bool)

(declare-fun res!94879 () Bool)

(assert (=> b!199536 (=> (not res!94879) (not e!130972))))

(assert (=> b!199536 (= res!94879 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4486 _keys!825))))))

(declare-fun b!199537 () Bool)

(declare-fun res!94880 () Bool)

(assert (=> b!199537 (=> (not res!94880) (not e!130972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8822 (_ BitVec 32)) Bool)

(assert (=> b!199537 (= res!94880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199538 () Bool)

(declare-fun res!94878 () Bool)

(assert (=> b!199538 (=> (not res!94878) (not e!130972))))

(assert (=> b!199538 (= res!94878 (and (= (size!4485 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4486 _keys!825) (size!4485 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199539 () Bool)

(declare-fun res!94881 () Bool)

(assert (=> b!199539 (=> (not res!94881) (not e!130972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199539 (= res!94881 (validKeyInArray!0 k0!843))))

(assert (= (and start!20288 res!94877) b!199538))

(assert (= (and b!199538 res!94878) b!199537))

(assert (= (and b!199537 res!94880) b!199535))

(assert (= (and b!199535 res!94876) b!199536))

(assert (= (and b!199536 res!94879) b!199539))

(assert (= (and b!199539 res!94881) b!199533))

(assert (= (and b!199533 res!94882) b!199530))

(assert (= (and b!199532 condMapEmpty!8255) mapIsEmpty!8255))

(assert (= (and b!199532 (not condMapEmpty!8255)) mapNonEmpty!8255))

(get-info :version)

(assert (= (and mapNonEmpty!8255 ((_ is ValueCellFull!2052) mapValue!8255)) b!199531))

(assert (= (and b!199532 ((_ is ValueCellFull!2052) mapDefault!8255)) b!199534))

(assert (= start!20288 b!199532))

(declare-fun m!226009 () Bool)

(assert (=> b!199533 m!226009))

(declare-fun m!226011 () Bool)

(assert (=> b!199535 m!226011))

(declare-fun m!226013 () Bool)

(assert (=> b!199539 m!226013))

(declare-fun m!226015 () Bool)

(assert (=> start!20288 m!226015))

(declare-fun m!226017 () Bool)

(assert (=> start!20288 m!226017))

(declare-fun m!226019 () Bool)

(assert (=> start!20288 m!226019))

(declare-fun m!226021 () Bool)

(assert (=> b!199530 m!226021))

(declare-fun m!226023 () Bool)

(assert (=> b!199530 m!226023))

(declare-fun m!226025 () Bool)

(assert (=> b!199530 m!226025))

(declare-fun m!226027 () Bool)

(assert (=> b!199530 m!226027))

(declare-fun m!226029 () Bool)

(assert (=> b!199530 m!226029))

(declare-fun m!226031 () Bool)

(assert (=> b!199530 m!226031))

(declare-fun m!226033 () Bool)

(assert (=> mapNonEmpty!8255 m!226033))

(declare-fun m!226035 () Bool)

(assert (=> b!199537 m!226035))

(check-sat tp_is_empty!4791 (not start!20288) (not mapNonEmpty!8255) (not b_next!4935) (not b!199530) (not b!199539) b_and!11699 (not b!199537) (not b!199535))
(check-sat b_and!11699 (not b_next!4935))
