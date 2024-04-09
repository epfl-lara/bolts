; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20742 () Bool)

(assert start!20742)

(declare-fun b_free!5389 () Bool)

(declare-fun b_next!5389 () Bool)

(assert (=> start!20742 (= b_free!5389 (not b_next!5389))))

(declare-fun tp!19199 () Bool)

(declare-fun b_and!12153 () Bool)

(assert (=> start!20742 (= tp!19199 b_and!12153)))

(declare-fun mapIsEmpty!8936 () Bool)

(declare-fun mapRes!8936 () Bool)

(assert (=> mapIsEmpty!8936 mapRes!8936))

(declare-fun b!207402 () Bool)

(declare-fun e!135412 () Bool)

(assert (=> b!207402 (= e!135412 (not true))))

(declare-datatypes ((V!6641 0))(
  ( (V!6642 (val!2667 Int)) )
))
(declare-datatypes ((ValueCell!2279 0))(
  ( (ValueCellFull!2279 (v!4633 V!6641)) (EmptyCell!2279) )
))
(declare-datatypes ((array!9696 0))(
  ( (array!9697 (arr!4598 (Array (_ BitVec 32) ValueCell!2279)) (size!4923 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9696)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!4044 0))(
  ( (tuple2!4045 (_1!2032 (_ BitVec 64)) (_2!2032 V!6641)) )
))
(declare-datatypes ((List!2959 0))(
  ( (Nil!2956) (Cons!2955 (h!3597 tuple2!4044) (t!7898 List!2959)) )
))
(declare-datatypes ((ListLongMap!2971 0))(
  ( (ListLongMap!2972 (toList!1501 List!2959)) )
))
(declare-fun lt!106311 () ListLongMap!2971)

(declare-fun zeroValue!615 () V!6641)

(declare-datatypes ((array!9698 0))(
  ( (array!9699 (arr!4599 (Array (_ BitVec 32) (_ BitVec 64))) (size!4924 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9698)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6641)

(declare-fun getCurrentListMap!1063 (array!9698 array!9696 (_ BitVec 32) (_ BitVec 32) V!6641 V!6641 (_ BitVec 32) Int) ListLongMap!2971)

(assert (=> b!207402 (= lt!106311 (getCurrentListMap!1063 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106308 () ListLongMap!2971)

(declare-fun lt!106309 () array!9696)

(assert (=> b!207402 (= lt!106308 (getCurrentListMap!1063 _keys!825 lt!106309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106310 () ListLongMap!2971)

(declare-fun lt!106312 () ListLongMap!2971)

(assert (=> b!207402 (and (= lt!106310 lt!106312) (= lt!106312 lt!106310))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6641)

(declare-fun lt!106307 () ListLongMap!2971)

(declare-fun +!518 (ListLongMap!2971 tuple2!4044) ListLongMap!2971)

(assert (=> b!207402 (= lt!106312 (+!518 lt!106307 (tuple2!4045 k!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6331 0))(
  ( (Unit!6332) )
))
(declare-fun lt!106306 () Unit!6331)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!176 (array!9698 array!9696 (_ BitVec 32) (_ BitVec 32) V!6641 V!6641 (_ BitVec 32) (_ BitVec 64) V!6641 (_ BitVec 32) Int) Unit!6331)

(assert (=> b!207402 (= lt!106306 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!176 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!434 (array!9698 array!9696 (_ BitVec 32) (_ BitVec 32) V!6641 V!6641 (_ BitVec 32) Int) ListLongMap!2971)

(assert (=> b!207402 (= lt!106310 (getCurrentListMapNoExtraKeys!434 _keys!825 lt!106309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207402 (= lt!106309 (array!9697 (store (arr!4598 _values!649) i!601 (ValueCellFull!2279 v!520)) (size!4923 _values!649)))))

(assert (=> b!207402 (= lt!106307 (getCurrentListMapNoExtraKeys!434 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207403 () Bool)

(declare-fun e!135415 () Bool)

(declare-fun tp_is_empty!5245 () Bool)

(assert (=> b!207403 (= e!135415 tp_is_empty!5245)))

(declare-fun b!207404 () Bool)

(declare-fun e!135413 () Bool)

(assert (=> b!207404 (= e!135413 tp_is_empty!5245)))

(declare-fun b!207405 () Bool)

(declare-fun res!100709 () Bool)

(assert (=> b!207405 (=> (not res!100709) (not e!135412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9698 (_ BitVec 32)) Bool)

(assert (=> b!207405 (= res!100709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207406 () Bool)

(declare-fun res!100706 () Bool)

(assert (=> b!207406 (=> (not res!100706) (not e!135412))))

(assert (=> b!207406 (= res!100706 (and (= (size!4923 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4924 _keys!825) (size!4923 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207407 () Bool)

(declare-fun res!100710 () Bool)

(assert (=> b!207407 (=> (not res!100710) (not e!135412))))

(assert (=> b!207407 (= res!100710 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4924 _keys!825))))))

(declare-fun b!207408 () Bool)

(declare-fun res!100711 () Bool)

(assert (=> b!207408 (=> (not res!100711) (not e!135412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207408 (= res!100711 (validKeyInArray!0 k!843))))

(declare-fun res!100705 () Bool)

(assert (=> start!20742 (=> (not res!100705) (not e!135412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20742 (= res!100705 (validMask!0 mask!1149))))

(assert (=> start!20742 e!135412))

(declare-fun e!135414 () Bool)

(declare-fun array_inv!3035 (array!9696) Bool)

(assert (=> start!20742 (and (array_inv!3035 _values!649) e!135414)))

(assert (=> start!20742 true))

(assert (=> start!20742 tp_is_empty!5245))

(declare-fun array_inv!3036 (array!9698) Bool)

(assert (=> start!20742 (array_inv!3036 _keys!825)))

(assert (=> start!20742 tp!19199))

(declare-fun b!207409 () Bool)

(declare-fun res!100707 () Bool)

(assert (=> b!207409 (=> (not res!100707) (not e!135412))))

(assert (=> b!207409 (= res!100707 (= (select (arr!4599 _keys!825) i!601) k!843))))

(declare-fun b!207410 () Bool)

(declare-fun res!100708 () Bool)

(assert (=> b!207410 (=> (not res!100708) (not e!135412))))

(declare-datatypes ((List!2960 0))(
  ( (Nil!2957) (Cons!2956 (h!3598 (_ BitVec 64)) (t!7899 List!2960)) )
))
(declare-fun arrayNoDuplicates!0 (array!9698 (_ BitVec 32) List!2960) Bool)

(assert (=> b!207410 (= res!100708 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2957))))

(declare-fun b!207411 () Bool)

(assert (=> b!207411 (= e!135414 (and e!135413 mapRes!8936))))

(declare-fun condMapEmpty!8936 () Bool)

(declare-fun mapDefault!8936 () ValueCell!2279)

