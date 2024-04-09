; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96588 () Bool)

(assert start!96588)

(declare-fun b_free!23079 () Bool)

(declare-fun b_next!23079 () Bool)

(assert (=> start!96588 (= b_free!23079 (not b_next!23079))))

(declare-fun tp!81170 () Bool)

(declare-fun b_and!36867 () Bool)

(assert (=> start!96588 (= tp!81170 b_and!36867)))

(declare-fun b!1097966 () Bool)

(declare-fun res!732853 () Bool)

(declare-fun e!626708 () Bool)

(assert (=> b!1097966 (=> (not res!732853) (not e!626708))))

(declare-datatypes ((array!71122 0))(
  ( (array!71123 (arr!34227 (Array (_ BitVec 32) (_ BitVec 64))) (size!34764 (_ BitVec 32))) )
))
(declare-fun lt!491001 () array!71122)

(declare-datatypes ((List!24042 0))(
  ( (Nil!24039) (Cons!24038 (h!25247 (_ BitVec 64)) (t!34174 List!24042)) )
))
(declare-fun arrayNoDuplicates!0 (array!71122 (_ BitVec 32) List!24042) Bool)

(assert (=> b!1097966 (= res!732853 (arrayNoDuplicates!0 lt!491001 #b00000000000000000000000000000000 Nil!24039))))

(declare-fun mapIsEmpty!42460 () Bool)

(declare-fun mapRes!42460 () Bool)

(assert (=> mapIsEmpty!42460 mapRes!42460))

(declare-fun b!1097967 () Bool)

(declare-fun e!626712 () Bool)

(declare-fun tp_is_empty!27129 () Bool)

(assert (=> b!1097967 (= e!626712 tp_is_empty!27129)))

(declare-fun b!1097968 () Bool)

(declare-fun res!732855 () Bool)

(declare-fun e!626709 () Bool)

(assert (=> b!1097968 (=> (not res!732855) (not e!626709))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun _keys!1070 () array!71122)

(declare-datatypes ((V!41299 0))(
  ( (V!41300 (val!13621 Int)) )
))
(declare-datatypes ((ValueCell!12855 0))(
  ( (ValueCellFull!12855 (v!16245 V!41299)) (EmptyCell!12855) )
))
(declare-datatypes ((array!71124 0))(
  ( (array!71125 (arr!34228 (Array (_ BitVec 32) ValueCell!12855)) (size!34765 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71124)

(assert (=> b!1097968 (= res!732855 (and (= (size!34765 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34764 _keys!1070) (size!34765 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1097969 () Bool)

(declare-fun e!626707 () Bool)

(assert (=> b!1097969 (= e!626707 (and e!626712 mapRes!42460))))

(declare-fun condMapEmpty!42460 () Bool)

(declare-fun mapDefault!42460 () ValueCell!12855)

(assert (=> b!1097969 (= condMapEmpty!42460 (= (arr!34228 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12855)) mapDefault!42460)))))

(declare-fun b!1097970 () Bool)

(declare-fun res!732857 () Bool)

(assert (=> b!1097970 (=> (not res!732857) (not e!626709))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1097970 (= res!732857 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34764 _keys!1070))))))

(declare-fun b!1097971 () Bool)

(declare-fun res!732859 () Bool)

(assert (=> b!1097971 (=> (not res!732859) (not e!626709))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1097971 (= res!732859 (validKeyInArray!0 k0!904))))

(declare-fun b!1097972 () Bool)

(declare-fun e!626706 () Bool)

(assert (=> b!1097972 (= e!626708 (not e!626706))))

(declare-fun res!732861 () Bool)

(assert (=> b!1097972 (=> res!732861 e!626706)))

(assert (=> b!1097972 (= res!732861 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41299)

(declare-datatypes ((tuple2!17364 0))(
  ( (tuple2!17365 (_1!8692 (_ BitVec 64)) (_2!8692 V!41299)) )
))
(declare-datatypes ((List!24043 0))(
  ( (Nil!24040) (Cons!24039 (h!25248 tuple2!17364) (t!34175 List!24043)) )
))
(declare-datatypes ((ListLongMap!15345 0))(
  ( (ListLongMap!15346 (toList!7688 List!24043)) )
))
(declare-fun lt!491008 () ListLongMap!15345)

(declare-fun zeroValue!831 () V!41299)

(declare-fun getCurrentListMap!4386 (array!71122 array!71124 (_ BitVec 32) (_ BitVec 32) V!41299 V!41299 (_ BitVec 32) Int) ListLongMap!15345)

(assert (=> b!1097972 (= lt!491008 (getCurrentListMap!4386 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491002 () ListLongMap!15345)

(declare-fun lt!491006 () array!71124)

(assert (=> b!1097972 (= lt!491002 (getCurrentListMap!4386 lt!491001 lt!491006 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491005 () ListLongMap!15345)

(declare-fun lt!491004 () ListLongMap!15345)

(assert (=> b!1097972 (and (= lt!491005 lt!491004) (= lt!491004 lt!491005))))

(declare-fun lt!491000 () ListLongMap!15345)

(declare-fun -!933 (ListLongMap!15345 (_ BitVec 64)) ListLongMap!15345)

(assert (=> b!1097972 (= lt!491004 (-!933 lt!491000 k0!904))))

(declare-datatypes ((Unit!36049 0))(
  ( (Unit!36050) )
))
(declare-fun lt!491003 () Unit!36049)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!198 (array!71122 array!71124 (_ BitVec 32) (_ BitVec 32) V!41299 V!41299 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36049)

(assert (=> b!1097972 (= lt!491003 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!198 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4173 (array!71122 array!71124 (_ BitVec 32) (_ BitVec 32) V!41299 V!41299 (_ BitVec 32) Int) ListLongMap!15345)

(assert (=> b!1097972 (= lt!491005 (getCurrentListMapNoExtraKeys!4173 lt!491001 lt!491006 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2304 (Int (_ BitVec 64)) V!41299)

(assert (=> b!1097972 (= lt!491006 (array!71125 (store (arr!34228 _values!874) i!650 (ValueCellFull!12855 (dynLambda!2304 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34765 _values!874)))))

(assert (=> b!1097972 (= lt!491000 (getCurrentListMapNoExtraKeys!4173 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1097972 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!490999 () Unit!36049)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71122 (_ BitVec 64) (_ BitVec 32)) Unit!36049)

(assert (=> b!1097972 (= lt!490999 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1097973 () Bool)

(declare-fun lt!491007 () tuple2!17364)

(declare-fun lt!490998 () tuple2!17364)

(declare-fun +!3323 (ListLongMap!15345 tuple2!17364) ListLongMap!15345)

(assert (=> b!1097973 (= e!626706 (= lt!491002 (+!3323 (+!3323 lt!491004 lt!491007) lt!490998)))))

(declare-fun e!626713 () Bool)

(assert (=> b!1097973 e!626713))

(declare-fun res!732858 () Bool)

(assert (=> b!1097973 (=> (not res!732858) (not e!626713))))

(assert (=> b!1097973 (= res!732858 (= lt!491002 (+!3323 (+!3323 lt!491005 lt!491007) lt!490998)))))

(assert (=> b!1097973 (= lt!490998 (tuple2!17365 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1097973 (= lt!491007 (tuple2!17365 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1097974 () Bool)

(assert (=> b!1097974 (= e!626713 (= lt!491008 (+!3323 (+!3323 lt!491000 lt!491007) lt!490998)))))

(declare-fun res!732862 () Bool)

(assert (=> start!96588 (=> (not res!732862) (not e!626709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96588 (= res!732862 (validMask!0 mask!1414))))

(assert (=> start!96588 e!626709))

(assert (=> start!96588 tp!81170))

(assert (=> start!96588 true))

(assert (=> start!96588 tp_is_empty!27129))

(declare-fun array_inv!26224 (array!71122) Bool)

(assert (=> start!96588 (array_inv!26224 _keys!1070)))

(declare-fun array_inv!26225 (array!71124) Bool)

(assert (=> start!96588 (and (array_inv!26225 _values!874) e!626707)))

(declare-fun b!1097975 () Bool)

(declare-fun res!732860 () Bool)

(assert (=> b!1097975 (=> (not res!732860) (not e!626709))))

(assert (=> b!1097975 (= res!732860 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24039))))

(declare-fun mapNonEmpty!42460 () Bool)

(declare-fun tp!81171 () Bool)

(declare-fun e!626711 () Bool)

(assert (=> mapNonEmpty!42460 (= mapRes!42460 (and tp!81171 e!626711))))

(declare-fun mapValue!42460 () ValueCell!12855)

(declare-fun mapKey!42460 () (_ BitVec 32))

(declare-fun mapRest!42460 () (Array (_ BitVec 32) ValueCell!12855))

(assert (=> mapNonEmpty!42460 (= (arr!34228 _values!874) (store mapRest!42460 mapKey!42460 mapValue!42460))))

(declare-fun b!1097976 () Bool)

(assert (=> b!1097976 (= e!626709 e!626708)))

(declare-fun res!732863 () Bool)

(assert (=> b!1097976 (=> (not res!732863) (not e!626708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71122 (_ BitVec 32)) Bool)

(assert (=> b!1097976 (= res!732863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491001 mask!1414))))

(assert (=> b!1097976 (= lt!491001 (array!71123 (store (arr!34227 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34764 _keys!1070)))))

(declare-fun b!1097977 () Bool)

(declare-fun res!732856 () Bool)

(assert (=> b!1097977 (=> (not res!732856) (not e!626709))))

(assert (=> b!1097977 (= res!732856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1097978 () Bool)

(assert (=> b!1097978 (= e!626711 tp_is_empty!27129)))

(declare-fun b!1097979 () Bool)

(declare-fun res!732854 () Bool)

(assert (=> b!1097979 (=> (not res!732854) (not e!626709))))

(assert (=> b!1097979 (= res!732854 (= (select (arr!34227 _keys!1070) i!650) k0!904))))

(assert (= (and start!96588 res!732862) b!1097968))

(assert (= (and b!1097968 res!732855) b!1097977))

(assert (= (and b!1097977 res!732856) b!1097975))

(assert (= (and b!1097975 res!732860) b!1097970))

(assert (= (and b!1097970 res!732857) b!1097971))

(assert (= (and b!1097971 res!732859) b!1097979))

(assert (= (and b!1097979 res!732854) b!1097976))

(assert (= (and b!1097976 res!732863) b!1097966))

(assert (= (and b!1097966 res!732853) b!1097972))

(assert (= (and b!1097972 (not res!732861)) b!1097973))

(assert (= (and b!1097973 res!732858) b!1097974))

(assert (= (and b!1097969 condMapEmpty!42460) mapIsEmpty!42460))

(assert (= (and b!1097969 (not condMapEmpty!42460)) mapNonEmpty!42460))

(get-info :version)

(assert (= (and mapNonEmpty!42460 ((_ is ValueCellFull!12855) mapValue!42460)) b!1097978))

(assert (= (and b!1097969 ((_ is ValueCellFull!12855) mapDefault!42460)) b!1097967))

(assert (= start!96588 b!1097969))

(declare-fun b_lambda!17827 () Bool)

(assert (=> (not b_lambda!17827) (not b!1097972)))

(declare-fun t!34173 () Bool)

(declare-fun tb!7953 () Bool)

(assert (=> (and start!96588 (= defaultEntry!882 defaultEntry!882) t!34173) tb!7953))

(declare-fun result!16425 () Bool)

(assert (=> tb!7953 (= result!16425 tp_is_empty!27129)))

(assert (=> b!1097972 t!34173))

(declare-fun b_and!36869 () Bool)

(assert (= b_and!36867 (and (=> t!34173 result!16425) b_and!36869)))

(declare-fun m!1017671 () Bool)

(assert (=> b!1097976 m!1017671))

(declare-fun m!1017673 () Bool)

(assert (=> b!1097976 m!1017673))

(declare-fun m!1017675 () Bool)

(assert (=> b!1097975 m!1017675))

(declare-fun m!1017677 () Bool)

(assert (=> b!1097972 m!1017677))

(declare-fun m!1017679 () Bool)

(assert (=> b!1097972 m!1017679))

(declare-fun m!1017681 () Bool)

(assert (=> b!1097972 m!1017681))

(declare-fun m!1017683 () Bool)

(assert (=> b!1097972 m!1017683))

(declare-fun m!1017685 () Bool)

(assert (=> b!1097972 m!1017685))

(declare-fun m!1017687 () Bool)

(assert (=> b!1097972 m!1017687))

(declare-fun m!1017689 () Bool)

(assert (=> b!1097972 m!1017689))

(declare-fun m!1017691 () Bool)

(assert (=> b!1097972 m!1017691))

(declare-fun m!1017693 () Bool)

(assert (=> b!1097972 m!1017693))

(declare-fun m!1017695 () Bool)

(assert (=> b!1097972 m!1017695))

(declare-fun m!1017697 () Bool)

(assert (=> start!96588 m!1017697))

(declare-fun m!1017699 () Bool)

(assert (=> start!96588 m!1017699))

(declare-fun m!1017701 () Bool)

(assert (=> start!96588 m!1017701))

(declare-fun m!1017703 () Bool)

(assert (=> b!1097977 m!1017703))

(declare-fun m!1017705 () Bool)

(assert (=> b!1097974 m!1017705))

(assert (=> b!1097974 m!1017705))

(declare-fun m!1017707 () Bool)

(assert (=> b!1097974 m!1017707))

(declare-fun m!1017709 () Bool)

(assert (=> b!1097979 m!1017709))

(declare-fun m!1017711 () Bool)

(assert (=> b!1097966 m!1017711))

(declare-fun m!1017713 () Bool)

(assert (=> mapNonEmpty!42460 m!1017713))

(declare-fun m!1017715 () Bool)

(assert (=> b!1097971 m!1017715))

(declare-fun m!1017717 () Bool)

(assert (=> b!1097973 m!1017717))

(assert (=> b!1097973 m!1017717))

(declare-fun m!1017719 () Bool)

(assert (=> b!1097973 m!1017719))

(declare-fun m!1017721 () Bool)

(assert (=> b!1097973 m!1017721))

(assert (=> b!1097973 m!1017721))

(declare-fun m!1017723 () Bool)

(assert (=> b!1097973 m!1017723))

(check-sat (not b!1097971) (not b!1097977) (not b_next!23079) (not b!1097976) (not b_lambda!17827) (not b!1097966) b_and!36869 (not b!1097973) (not start!96588) (not b!1097974) tp_is_empty!27129 (not b!1097972) (not b!1097975) (not mapNonEmpty!42460))
(check-sat b_and!36869 (not b_next!23079))
