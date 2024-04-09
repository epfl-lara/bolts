; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41060 () Bool)

(assert start!41060)

(declare-fun b_free!10965 () Bool)

(declare-fun b_next!10965 () Bool)

(assert (=> start!41060 (= b_free!10965 (not b_next!10965))))

(declare-fun tp!38725 () Bool)

(declare-fun b_and!19155 () Bool)

(assert (=> start!41060 (= tp!38725 b_and!19155)))

(declare-fun b!457419 () Bool)

(declare-fun res!273218 () Bool)

(declare-fun e!267150 () Bool)

(assert (=> b!457419 (=> (not res!273218) (not e!267150))))

(declare-datatypes ((array!28375 0))(
  ( (array!28376 (arr!13627 (Array (_ BitVec 32) (_ BitVec 64))) (size!13979 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28375)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17509 0))(
  ( (V!17510 (val!6196 Int)) )
))
(declare-datatypes ((ValueCell!5808 0))(
  ( (ValueCellFull!5808 (v!8462 V!17509)) (EmptyCell!5808) )
))
(declare-datatypes ((array!28377 0))(
  ( (array!28378 (arr!13628 (Array (_ BitVec 32) ValueCell!5808)) (size!13980 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28377)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!457419 (= res!273218 (and (= (size!13980 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13979 _keys!709) (size!13980 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!457420 () Bool)

(declare-fun e!267146 () Bool)

(declare-fun e!267151 () Bool)

(assert (=> b!457420 (= e!267146 (not e!267151))))

(declare-fun res!273226 () Bool)

(assert (=> b!457420 (=> res!273226 e!267151)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!457420 (= res!273226 (not (validKeyInArray!0 (select (arr!13627 _keys!709) from!863))))))

(declare-datatypes ((tuple2!8128 0))(
  ( (tuple2!8129 (_1!4074 (_ BitVec 64)) (_2!4074 V!17509)) )
))
(declare-datatypes ((List!8231 0))(
  ( (Nil!8228) (Cons!8227 (h!9083 tuple2!8128) (t!14083 List!8231)) )
))
(declare-datatypes ((ListLongMap!7055 0))(
  ( (ListLongMap!7056 (toList!3543 List!8231)) )
))
(declare-fun lt!206956 () ListLongMap!7055)

(declare-fun lt!206959 () ListLongMap!7055)

(assert (=> b!457420 (= lt!206956 lt!206959)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!206961 () ListLongMap!7055)

(declare-fun v!412 () V!17509)

(declare-fun +!1563 (ListLongMap!7055 tuple2!8128) ListLongMap!7055)

(assert (=> b!457420 (= lt!206959 (+!1563 lt!206961 (tuple2!8129 k0!794 v!412)))))

(declare-fun minValue!515 () V!17509)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!206962 () array!28375)

(declare-fun lt!206955 () array!28377)

(declare-fun zeroValue!515 () V!17509)

(declare-fun getCurrentListMapNoExtraKeys!1717 (array!28375 array!28377 (_ BitVec 32) (_ BitVec 32) V!17509 V!17509 (_ BitVec 32) Int) ListLongMap!7055)

(assert (=> b!457420 (= lt!206956 (getCurrentListMapNoExtraKeys!1717 lt!206962 lt!206955 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!457420 (= lt!206961 (getCurrentListMapNoExtraKeys!1717 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13245 0))(
  ( (Unit!13246) )
))
(declare-fun lt!206957 () Unit!13245)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!725 (array!28375 array!28377 (_ BitVec 32) (_ BitVec 32) V!17509 V!17509 (_ BitVec 32) (_ BitVec 64) V!17509 (_ BitVec 32) Int) Unit!13245)

(assert (=> b!457420 (= lt!206957 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!725 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!457421 () Bool)

(declare-fun res!273222 () Bool)

(assert (=> b!457421 (=> (not res!273222) (not e!267150))))

(declare-fun arrayContainsKey!0 (array!28375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!457421 (= res!273222 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!457422 () Bool)

(declare-fun e!267149 () Bool)

(declare-fun e!267144 () Bool)

(declare-fun mapRes!20098 () Bool)

(assert (=> b!457422 (= e!267149 (and e!267144 mapRes!20098))))

(declare-fun condMapEmpty!20098 () Bool)

(declare-fun mapDefault!20098 () ValueCell!5808)

(assert (=> b!457422 (= condMapEmpty!20098 (= (arr!13628 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5808)) mapDefault!20098)))))

(declare-fun b!457423 () Bool)

(declare-fun res!273230 () Bool)

(assert (=> b!457423 (=> (not res!273230) (not e!267150))))

(assert (=> b!457423 (= res!273230 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13979 _keys!709))))))

(declare-fun res!273231 () Bool)

(assert (=> start!41060 (=> (not res!273231) (not e!267150))))

(assert (=> start!41060 (= res!273231 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13979 _keys!709))))))

(assert (=> start!41060 e!267150))

(declare-fun tp_is_empty!12303 () Bool)

(assert (=> start!41060 tp_is_empty!12303))

(assert (=> start!41060 tp!38725))

(assert (=> start!41060 true))

(declare-fun array_inv!9860 (array!28377) Bool)

(assert (=> start!41060 (and (array_inv!9860 _values!549) e!267149)))

(declare-fun array_inv!9861 (array!28375) Bool)

(assert (=> start!41060 (array_inv!9861 _keys!709)))

(declare-fun mapIsEmpty!20098 () Bool)

(assert (=> mapIsEmpty!20098 mapRes!20098))

(declare-fun mapNonEmpty!20098 () Bool)

(declare-fun tp!38724 () Bool)

(declare-fun e!267147 () Bool)

(assert (=> mapNonEmpty!20098 (= mapRes!20098 (and tp!38724 e!267147))))

(declare-fun mapRest!20098 () (Array (_ BitVec 32) ValueCell!5808))

(declare-fun mapKey!20098 () (_ BitVec 32))

(declare-fun mapValue!20098 () ValueCell!5808)

(assert (=> mapNonEmpty!20098 (= (arr!13628 _values!549) (store mapRest!20098 mapKey!20098 mapValue!20098))))

(declare-fun b!457424 () Bool)

(declare-fun res!273221 () Bool)

(declare-fun e!267145 () Bool)

(assert (=> b!457424 (=> (not res!273221) (not e!267145))))

(declare-datatypes ((List!8232 0))(
  ( (Nil!8229) (Cons!8228 (h!9084 (_ BitVec 64)) (t!14084 List!8232)) )
))
(declare-fun arrayNoDuplicates!0 (array!28375 (_ BitVec 32) List!8232) Bool)

(assert (=> b!457424 (= res!273221 (arrayNoDuplicates!0 lt!206962 #b00000000000000000000000000000000 Nil!8229))))

(declare-fun b!457425 () Bool)

(assert (=> b!457425 (= e!267151 true)))

(declare-fun lt!206960 () ListLongMap!7055)

(declare-fun get!6719 (ValueCell!5808 V!17509) V!17509)

(declare-fun dynLambda!875 (Int (_ BitVec 64)) V!17509)

(assert (=> b!457425 (= lt!206960 (+!1563 lt!206959 (tuple2!8129 (select (arr!13627 _keys!709) from!863) (get!6719 (select (arr!13628 _values!549) from!863) (dynLambda!875 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457426 () Bool)

(declare-fun res!273228 () Bool)

(assert (=> b!457426 (=> (not res!273228) (not e!267150))))

(assert (=> b!457426 (= res!273228 (or (= (select (arr!13627 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13627 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457427 () Bool)

(declare-fun res!273219 () Bool)

(assert (=> b!457427 (=> (not res!273219) (not e!267150))))

(assert (=> b!457427 (= res!273219 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8229))))

(declare-fun b!457428 () Bool)

(assert (=> b!457428 (= e!267145 e!267146)))

(declare-fun res!273229 () Bool)

(assert (=> b!457428 (=> (not res!273229) (not e!267146))))

(assert (=> b!457428 (= res!273229 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!457428 (= lt!206960 (getCurrentListMapNoExtraKeys!1717 lt!206962 lt!206955 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!457428 (= lt!206955 (array!28378 (store (arr!13628 _values!549) i!563 (ValueCellFull!5808 v!412)) (size!13980 _values!549)))))

(declare-fun lt!206958 () ListLongMap!7055)

(assert (=> b!457428 (= lt!206958 (getCurrentListMapNoExtraKeys!1717 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!457429 () Bool)

(assert (=> b!457429 (= e!267147 tp_is_empty!12303)))

(declare-fun b!457430 () Bool)

(declare-fun res!273220 () Bool)

(assert (=> b!457430 (=> (not res!273220) (not e!267150))))

(assert (=> b!457430 (= res!273220 (validKeyInArray!0 k0!794))))

(declare-fun b!457431 () Bool)

(declare-fun res!273223 () Bool)

(assert (=> b!457431 (=> (not res!273223) (not e!267150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!457431 (= res!273223 (validMask!0 mask!1025))))

(declare-fun b!457432 () Bool)

(assert (=> b!457432 (= e!267150 e!267145)))

(declare-fun res!273224 () Bool)

(assert (=> b!457432 (=> (not res!273224) (not e!267145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28375 (_ BitVec 32)) Bool)

(assert (=> b!457432 (= res!273224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206962 mask!1025))))

(assert (=> b!457432 (= lt!206962 (array!28376 (store (arr!13627 _keys!709) i!563 k0!794) (size!13979 _keys!709)))))

(declare-fun b!457433 () Bool)

(declare-fun res!273227 () Bool)

(assert (=> b!457433 (=> (not res!273227) (not e!267150))))

(assert (=> b!457433 (= res!273227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!457434 () Bool)

(assert (=> b!457434 (= e!267144 tp_is_empty!12303)))

(declare-fun b!457435 () Bool)

(declare-fun res!273225 () Bool)

(assert (=> b!457435 (=> (not res!273225) (not e!267145))))

(assert (=> b!457435 (= res!273225 (bvsle from!863 i!563))))

(assert (= (and start!41060 res!273231) b!457431))

(assert (= (and b!457431 res!273223) b!457419))

(assert (= (and b!457419 res!273218) b!457433))

(assert (= (and b!457433 res!273227) b!457427))

(assert (= (and b!457427 res!273219) b!457423))

(assert (= (and b!457423 res!273230) b!457430))

(assert (= (and b!457430 res!273220) b!457426))

(assert (= (and b!457426 res!273228) b!457421))

(assert (= (and b!457421 res!273222) b!457432))

(assert (= (and b!457432 res!273224) b!457424))

(assert (= (and b!457424 res!273221) b!457435))

(assert (= (and b!457435 res!273225) b!457428))

(assert (= (and b!457428 res!273229) b!457420))

(assert (= (and b!457420 (not res!273226)) b!457425))

(assert (= (and b!457422 condMapEmpty!20098) mapIsEmpty!20098))

(assert (= (and b!457422 (not condMapEmpty!20098)) mapNonEmpty!20098))

(get-info :version)

(assert (= (and mapNonEmpty!20098 ((_ is ValueCellFull!5808) mapValue!20098)) b!457429))

(assert (= (and b!457422 ((_ is ValueCellFull!5808) mapDefault!20098)) b!457434))

(assert (= start!41060 b!457422))

(declare-fun b_lambda!9761 () Bool)

(assert (=> (not b_lambda!9761) (not b!457425)))

(declare-fun t!14082 () Bool)

(declare-fun tb!3809 () Bool)

(assert (=> (and start!41060 (= defaultEntry!557 defaultEntry!557) t!14082) tb!3809))

(declare-fun result!7151 () Bool)

(assert (=> tb!3809 (= result!7151 tp_is_empty!12303)))

(assert (=> b!457425 t!14082))

(declare-fun b_and!19157 () Bool)

(assert (= b_and!19155 (and (=> t!14082 result!7151) b_and!19157)))

(declare-fun m!440801 () Bool)

(assert (=> b!457420 m!440801))

(declare-fun m!440803 () Bool)

(assert (=> b!457420 m!440803))

(declare-fun m!440805 () Bool)

(assert (=> b!457420 m!440805))

(declare-fun m!440807 () Bool)

(assert (=> b!457420 m!440807))

(declare-fun m!440809 () Bool)

(assert (=> b!457420 m!440809))

(assert (=> b!457420 m!440801))

(declare-fun m!440811 () Bool)

(assert (=> b!457420 m!440811))

(declare-fun m!440813 () Bool)

(assert (=> b!457421 m!440813))

(declare-fun m!440815 () Bool)

(assert (=> mapNonEmpty!20098 m!440815))

(declare-fun m!440817 () Bool)

(assert (=> b!457433 m!440817))

(declare-fun m!440819 () Bool)

(assert (=> b!457430 m!440819))

(declare-fun m!440821 () Bool)

(assert (=> b!457424 m!440821))

(declare-fun m!440823 () Bool)

(assert (=> b!457428 m!440823))

(declare-fun m!440825 () Bool)

(assert (=> b!457428 m!440825))

(declare-fun m!440827 () Bool)

(assert (=> b!457428 m!440827))

(declare-fun m!440829 () Bool)

(assert (=> b!457432 m!440829))

(declare-fun m!440831 () Bool)

(assert (=> b!457432 m!440831))

(declare-fun m!440833 () Bool)

(assert (=> b!457431 m!440833))

(declare-fun m!440835 () Bool)

(assert (=> start!41060 m!440835))

(declare-fun m!440837 () Bool)

(assert (=> start!41060 m!440837))

(declare-fun m!440839 () Bool)

(assert (=> b!457426 m!440839))

(declare-fun m!440841 () Bool)

(assert (=> b!457427 m!440841))

(assert (=> b!457425 m!440801))

(declare-fun m!440843 () Bool)

(assert (=> b!457425 m!440843))

(declare-fun m!440845 () Bool)

(assert (=> b!457425 m!440845))

(declare-fun m!440847 () Bool)

(assert (=> b!457425 m!440847))

(assert (=> b!457425 m!440847))

(assert (=> b!457425 m!440845))

(declare-fun m!440849 () Bool)

(assert (=> b!457425 m!440849))

(check-sat (not start!41060) tp_is_empty!12303 (not b!457421) (not b_next!10965) (not b!457420) (not mapNonEmpty!20098) (not b!457428) (not b_lambda!9761) (not b!457431) (not b!457424) b_and!19157 (not b!457433) (not b!457425) (not b!457427) (not b!457430) (not b!457432))
(check-sat b_and!19157 (not b_next!10965))
