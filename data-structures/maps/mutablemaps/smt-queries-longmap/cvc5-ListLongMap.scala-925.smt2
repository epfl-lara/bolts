; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20658 () Bool)

(assert start!20658)

(declare-fun b_free!5305 () Bool)

(declare-fun b_next!5305 () Bool)

(assert (=> start!20658 (= b_free!5305 (not b_next!5305))))

(declare-fun tp!18947 () Bool)

(declare-fun b_and!12069 () Bool)

(assert (=> start!20658 (= tp!18947 b_and!12069)))

(declare-fun b!206092 () Bool)

(declare-fun res!99781 () Bool)

(declare-fun e!134736 () Bool)

(assert (=> b!206092 (=> (not res!99781) (not e!134736))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206092 (= res!99781 (validKeyInArray!0 k!843))))

(declare-fun b!206093 () Bool)

(declare-fun e!134733 () Bool)

(declare-fun tp_is_empty!5161 () Bool)

(assert (=> b!206093 (= e!134733 tp_is_empty!5161)))

(declare-fun res!99780 () Bool)

(assert (=> start!20658 (=> (not res!99780) (not e!134736))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20658 (= res!99780 (validMask!0 mask!1149))))

(assert (=> start!20658 e!134736))

(declare-datatypes ((V!6529 0))(
  ( (V!6530 (val!2625 Int)) )
))
(declare-datatypes ((ValueCell!2237 0))(
  ( (ValueCellFull!2237 (v!4591 V!6529)) (EmptyCell!2237) )
))
(declare-datatypes ((array!9532 0))(
  ( (array!9533 (arr!4516 (Array (_ BitVec 32) ValueCell!2237)) (size!4841 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9532)

(declare-fun e!134737 () Bool)

(declare-fun array_inv!2975 (array!9532) Bool)

(assert (=> start!20658 (and (array_inv!2975 _values!649) e!134737)))

(assert (=> start!20658 true))

(assert (=> start!20658 tp_is_empty!5161))

(declare-datatypes ((array!9534 0))(
  ( (array!9535 (arr!4517 (Array (_ BitVec 32) (_ BitVec 64))) (size!4842 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9534)

(declare-fun array_inv!2976 (array!9534) Bool)

(assert (=> start!20658 (array_inv!2976 _keys!825)))

(assert (=> start!20658 tp!18947))

(declare-fun b!206094 () Bool)

(declare-fun e!134735 () Bool)

(declare-fun e!134734 () Bool)

(assert (=> b!206094 (= e!134735 e!134734)))

(declare-fun res!99776 () Bool)

(assert (=> b!206094 (=> res!99776 e!134734)))

(assert (=> b!206094 (= res!99776 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3982 0))(
  ( (tuple2!3983 (_1!2001 (_ BitVec 64)) (_2!2001 V!6529)) )
))
(declare-datatypes ((List!2898 0))(
  ( (Nil!2895) (Cons!2894 (h!3536 tuple2!3982) (t!7837 List!2898)) )
))
(declare-datatypes ((ListLongMap!2909 0))(
  ( (ListLongMap!2910 (toList!1470 List!2898)) )
))
(declare-fun lt!105290 () ListLongMap!2909)

(declare-fun lt!105292 () ListLongMap!2909)

(assert (=> b!206094 (= lt!105290 lt!105292)))

(declare-fun lt!105300 () ListLongMap!2909)

(declare-fun lt!105295 () tuple2!3982)

(declare-fun +!487 (ListLongMap!2909 tuple2!3982) ListLongMap!2909)

(assert (=> b!206094 (= lt!105292 (+!487 lt!105300 lt!105295))))

(declare-fun lt!105297 () ListLongMap!2909)

(declare-fun lt!105298 () ListLongMap!2909)

(assert (=> b!206094 (= lt!105297 lt!105298)))

(declare-fun lt!105296 () ListLongMap!2909)

(assert (=> b!206094 (= lt!105298 (+!487 lt!105296 lt!105295))))

(declare-fun lt!105294 () ListLongMap!2909)

(assert (=> b!206094 (= lt!105297 (+!487 lt!105294 lt!105295))))

(declare-fun minValue!615 () V!6529)

(assert (=> b!206094 (= lt!105295 (tuple2!3983 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206095 () Bool)

(assert (=> b!206095 (= e!134734 true)))

(declare-fun lt!105291 () tuple2!3982)

(assert (=> b!206095 (= lt!105298 (+!487 lt!105292 lt!105291))))

(declare-datatypes ((Unit!6269 0))(
  ( (Unit!6270) )
))
(declare-fun lt!105299 () Unit!6269)

(declare-fun v!520 () V!6529)

(declare-fun addCommutativeForDiffKeys!185 (ListLongMap!2909 (_ BitVec 64) V!6529 (_ BitVec 64) V!6529) Unit!6269)

(assert (=> b!206095 (= lt!105299 (addCommutativeForDiffKeys!185 lt!105300 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206096 () Bool)

(declare-fun res!99778 () Bool)

(assert (=> b!206096 (=> (not res!99778) (not e!134736))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206096 (= res!99778 (= (select (arr!4517 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!8810 () Bool)

(declare-fun mapRes!8810 () Bool)

(declare-fun tp!18946 () Bool)

(assert (=> mapNonEmpty!8810 (= mapRes!8810 (and tp!18946 e!134733))))

(declare-fun mapRest!8810 () (Array (_ BitVec 32) ValueCell!2237))

(declare-fun mapKey!8810 () (_ BitVec 32))

(declare-fun mapValue!8810 () ValueCell!2237)

(assert (=> mapNonEmpty!8810 (= (arr!4516 _values!649) (store mapRest!8810 mapKey!8810 mapValue!8810))))

(declare-fun mapIsEmpty!8810 () Bool)

(assert (=> mapIsEmpty!8810 mapRes!8810))

(declare-fun b!206097 () Bool)

(declare-fun res!99775 () Bool)

(assert (=> b!206097 (=> (not res!99775) (not e!134736))))

(declare-datatypes ((List!2899 0))(
  ( (Nil!2896) (Cons!2895 (h!3537 (_ BitVec 64)) (t!7838 List!2899)) )
))
(declare-fun arrayNoDuplicates!0 (array!9534 (_ BitVec 32) List!2899) Bool)

(assert (=> b!206097 (= res!99775 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2896))))

(declare-fun b!206098 () Bool)

(declare-fun e!134731 () Bool)

(assert (=> b!206098 (= e!134737 (and e!134731 mapRes!8810))))

(declare-fun condMapEmpty!8810 () Bool)

(declare-fun mapDefault!8810 () ValueCell!2237)

