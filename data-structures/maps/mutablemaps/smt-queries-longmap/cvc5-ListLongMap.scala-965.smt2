; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20938 () Bool)

(assert start!20938)

(declare-fun b_free!5539 () Bool)

(declare-fun b_next!5539 () Bool)

(assert (=> start!20938 (= b_free!5539 (not b_next!5539))))

(declare-fun tp!19663 () Bool)

(declare-fun b_and!12327 () Bool)

(assert (=> start!20938 (= tp!19663 b_and!12327)))

(declare-fun b!210128 () Bool)

(declare-fun e!136863 () Bool)

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!210128 (= e!136863 (not (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!136865 () Bool)

(assert (=> b!210128 e!136865))

(declare-fun res!102521 () Bool)

(assert (=> b!210128 (=> (not res!102521) (not e!136865))))

(declare-datatypes ((V!6849 0))(
  ( (V!6850 (val!2745 Int)) )
))
(declare-datatypes ((tuple2!4146 0))(
  ( (tuple2!4147 (_1!2083 (_ BitVec 64)) (_2!2083 V!6849)) )
))
(declare-datatypes ((List!3064 0))(
  ( (Nil!3061) (Cons!3060 (h!3702 tuple2!4146) (t!8007 List!3064)) )
))
(declare-datatypes ((ListLongMap!3073 0))(
  ( (ListLongMap!3074 (toList!1552 List!3064)) )
))
(declare-fun lt!107602 () ListLongMap!3073)

(declare-fun lt!107598 () tuple2!4146)

(declare-fun lt!107597 () tuple2!4146)

(declare-fun lt!107600 () ListLongMap!3073)

(declare-fun +!545 (ListLongMap!3073 tuple2!4146) ListLongMap!3073)

(assert (=> b!210128 (= res!102521 (= lt!107600 (+!545 (+!545 lt!107602 lt!107598) lt!107597)))))

(declare-fun minValue!615 () V!6849)

(assert (=> b!210128 (= lt!107597 (tuple2!4147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun zeroValue!615 () V!6849)

(assert (=> b!210128 (= lt!107598 (tuple2!4147 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun res!102522 () Bool)

(declare-fun e!136862 () Bool)

(assert (=> start!20938 (=> (not res!102522) (not e!136862))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20938 (= res!102522 (validMask!0 mask!1149))))

(assert (=> start!20938 e!136862))

(declare-datatypes ((ValueCell!2357 0))(
  ( (ValueCellFull!2357 (v!4719 V!6849)) (EmptyCell!2357) )
))
(declare-datatypes ((array!10000 0))(
  ( (array!10001 (arr!4748 (Array (_ BitVec 32) ValueCell!2357)) (size!5073 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10000)

(declare-fun e!136864 () Bool)

(declare-fun array_inv!3133 (array!10000) Bool)

(assert (=> start!20938 (and (array_inv!3133 _values!649) e!136864)))

(assert (=> start!20938 true))

(declare-fun tp_is_empty!5401 () Bool)

(assert (=> start!20938 tp_is_empty!5401))

(declare-datatypes ((array!10002 0))(
  ( (array!10003 (arr!4749 (Array (_ BitVec 32) (_ BitVec 64))) (size!5074 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10002)

(declare-fun array_inv!3134 (array!10002) Bool)

(assert (=> start!20938 (array_inv!3134 _keys!825)))

(assert (=> start!20938 tp!19663))

(declare-fun b!210129 () Bool)

(declare-fun res!102518 () Bool)

(assert (=> b!210129 (=> (not res!102518) (not e!136862))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!210129 (= res!102518 (and (= (size!5073 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5074 _keys!825) (size!5073 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!210130 () Bool)

(declare-fun res!102515 () Bool)

(assert (=> b!210130 (=> (not res!102515) (not e!136862))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!210130 (= res!102515 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5074 _keys!825))))))

(declare-fun b!210131 () Bool)

(declare-fun e!136861 () Bool)

(assert (=> b!210131 (= e!136861 tp_is_empty!5401)))

(declare-fun b!210132 () Bool)

(declare-fun e!136860 () Bool)

(assert (=> b!210132 (= e!136860 tp_is_empty!5401)))

(declare-fun mapNonEmpty!9176 () Bool)

(declare-fun mapRes!9176 () Bool)

(declare-fun tp!19664 () Bool)

(assert (=> mapNonEmpty!9176 (= mapRes!9176 (and tp!19664 e!136861))))

(declare-fun mapKey!9176 () (_ BitVec 32))

(declare-fun mapRest!9176 () (Array (_ BitVec 32) ValueCell!2357))

(declare-fun mapValue!9176 () ValueCell!2357)

(assert (=> mapNonEmpty!9176 (= (arr!4748 _values!649) (store mapRest!9176 mapKey!9176 mapValue!9176))))

(declare-fun b!210133 () Bool)

(assert (=> b!210133 (= e!136864 (and e!136860 mapRes!9176))))

(declare-fun condMapEmpty!9176 () Bool)

(declare-fun mapDefault!9176 () ValueCell!2357)

