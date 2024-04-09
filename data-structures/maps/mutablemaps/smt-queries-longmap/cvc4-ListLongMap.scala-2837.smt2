; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40998 () Bool)

(assert start!40998)

(declare-fun b_free!10925 () Bool)

(declare-fun b_next!10925 () Bool)

(assert (=> start!40998 (= b_free!10925 (not b_next!10925))))

(declare-fun tp!38601 () Bool)

(declare-fun b_and!19085 () Bool)

(assert (=> start!40998 (= tp!38601 b_and!19085)))

(declare-fun b!456250 () Bool)

(declare-fun res!272337 () Bool)

(declare-fun e!266582 () Bool)

(assert (=> b!456250 (=> (not res!272337) (not e!266582))))

(declare-datatypes ((array!28293 0))(
  ( (array!28294 (arr!13587 (Array (_ BitVec 32) (_ BitVec 64))) (size!13939 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28293)

(declare-datatypes ((List!8199 0))(
  ( (Nil!8196) (Cons!8195 (h!9051 (_ BitVec 64)) (t!14035 List!8199)) )
))
(declare-fun arrayNoDuplicates!0 (array!28293 (_ BitVec 32) List!8199) Bool)

(assert (=> b!456250 (= res!272337 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8196))))

(declare-fun b!456251 () Bool)

(declare-fun res!272329 () Bool)

(declare-fun e!266579 () Bool)

(assert (=> b!456251 (=> (not res!272329) (not e!266579))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456251 (= res!272329 (bvsle from!863 i!563))))

(declare-fun b!456252 () Bool)

(declare-fun res!272331 () Bool)

(assert (=> b!456252 (=> (not res!272331) (not e!266582))))

(assert (=> b!456252 (= res!272331 (or (= (select (arr!13587 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13587 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!456253 () Bool)

(declare-fun e!266585 () Bool)

(assert (=> b!456253 (= e!266579 e!266585)))

(declare-fun res!272333 () Bool)

(assert (=> b!456253 (=> (not res!272333) (not e!266585))))

(assert (=> b!456253 (= res!272333 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17455 0))(
  ( (V!17456 (val!6176 Int)) )
))
(declare-datatypes ((tuple2!8092 0))(
  ( (tuple2!8093 (_1!4056 (_ BitVec 64)) (_2!4056 V!17455)) )
))
(declare-datatypes ((List!8200 0))(
  ( (Nil!8197) (Cons!8196 (h!9052 tuple2!8092) (t!14036 List!8200)) )
))
(declare-datatypes ((ListLongMap!7019 0))(
  ( (ListLongMap!7020 (toList!3525 List!8200)) )
))
(declare-fun lt!206514 () ListLongMap!7019)

(declare-fun minValue!515 () V!17455)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5788 0))(
  ( (ValueCellFull!5788 (v!8438 V!17455)) (EmptyCell!5788) )
))
(declare-datatypes ((array!28295 0))(
  ( (array!28296 (arr!13588 (Array (_ BitVec 32) ValueCell!5788)) (size!13940 (_ BitVec 32))) )
))
(declare-fun lt!206513 () array!28295)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!206517 () array!28293)

(declare-fun zeroValue!515 () V!17455)

(declare-fun getCurrentListMapNoExtraKeys!1701 (array!28293 array!28295 (_ BitVec 32) (_ BitVec 32) V!17455 V!17455 (_ BitVec 32) Int) ListLongMap!7019)

(assert (=> b!456253 (= lt!206514 (getCurrentListMapNoExtraKeys!1701 lt!206517 lt!206513 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28295)

(declare-fun v!412 () V!17455)

(assert (=> b!456253 (= lt!206513 (array!28296 (store (arr!13588 _values!549) i!563 (ValueCellFull!5788 v!412)) (size!13940 _values!549)))))

(declare-fun lt!206515 () ListLongMap!7019)

(assert (=> b!456253 (= lt!206515 (getCurrentListMapNoExtraKeys!1701 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456254 () Bool)

(declare-fun res!272335 () Bool)

(assert (=> b!456254 (=> (not res!272335) (not e!266582))))

(assert (=> b!456254 (= res!272335 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13939 _keys!709))))))

(declare-fun mapNonEmpty!20035 () Bool)

(declare-fun mapRes!20035 () Bool)

(declare-fun tp!38602 () Bool)

(declare-fun e!266581 () Bool)

(assert (=> mapNonEmpty!20035 (= mapRes!20035 (and tp!38602 e!266581))))

(declare-fun mapValue!20035 () ValueCell!5788)

(declare-fun mapRest!20035 () (Array (_ BitVec 32) ValueCell!5788))

(declare-fun mapKey!20035 () (_ BitVec 32))

(assert (=> mapNonEmpty!20035 (= (arr!13588 _values!549) (store mapRest!20035 mapKey!20035 mapValue!20035))))

(declare-fun b!456255 () Bool)

(declare-fun res!272330 () Bool)

(assert (=> b!456255 (=> (not res!272330) (not e!266582))))

(assert (=> b!456255 (= res!272330 (and (= (size!13940 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13939 _keys!709) (size!13940 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!456256 () Bool)

(declare-fun res!272338 () Bool)

(assert (=> b!456256 (=> (not res!272338) (not e!266579))))

(assert (=> b!456256 (= res!272338 (arrayNoDuplicates!0 lt!206517 #b00000000000000000000000000000000 Nil!8196))))

(declare-fun res!272336 () Bool)

(assert (=> start!40998 (=> (not res!272336) (not e!266582))))

(assert (=> start!40998 (= res!272336 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13939 _keys!709))))))

(assert (=> start!40998 e!266582))

(declare-fun tp_is_empty!12263 () Bool)

(assert (=> start!40998 tp_is_empty!12263))

(assert (=> start!40998 tp!38601))

(assert (=> start!40998 true))

(declare-fun e!266583 () Bool)

(declare-fun array_inv!9832 (array!28295) Bool)

(assert (=> start!40998 (and (array_inv!9832 _values!549) e!266583)))

(declare-fun array_inv!9833 (array!28293) Bool)

(assert (=> start!40998 (array_inv!9833 _keys!709)))

(declare-fun b!456257 () Bool)

(declare-fun e!266584 () Bool)

(assert (=> b!456257 (= e!266584 tp_is_empty!12263)))

(declare-fun b!456258 () Bool)

(declare-fun res!272332 () Bool)

(assert (=> b!456258 (=> (not res!272332) (not e!266582))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28293 (_ BitVec 32)) Bool)

(assert (=> b!456258 (= res!272332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!456259 () Bool)

(assert (=> b!456259 (= e!266582 e!266579)))

(declare-fun res!272334 () Bool)

(assert (=> b!456259 (=> (not res!272334) (not e!266579))))

(assert (=> b!456259 (= res!272334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206517 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!456259 (= lt!206517 (array!28294 (store (arr!13587 _keys!709) i!563 k!794) (size!13939 _keys!709)))))

(declare-fun b!456260 () Bool)

(assert (=> b!456260 (= e!266583 (and e!266584 mapRes!20035))))

(declare-fun condMapEmpty!20035 () Bool)

(declare-fun mapDefault!20035 () ValueCell!5788)

