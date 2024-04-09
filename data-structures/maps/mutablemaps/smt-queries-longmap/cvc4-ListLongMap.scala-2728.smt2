; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40198 () Bool)

(assert start!40198)

(declare-fun b_free!10457 () Bool)

(declare-fun b_next!10457 () Bool)

(assert (=> start!40198 (= b_free!10457 (not b_next!10457))))

(declare-fun tp!36899 () Bool)

(declare-fun b_and!18443 () Bool)

(assert (=> start!40198 (= tp!36899 b_and!18443)))

(declare-fun b!440129 () Bool)

(declare-fun e!259339 () Bool)

(declare-fun e!259337 () Bool)

(assert (=> b!440129 (= e!259339 e!259337)))

(declare-fun res!260365 () Bool)

(assert (=> b!440129 (=> (not res!260365) (not e!259337))))

(declare-datatypes ((array!27009 0))(
  ( (array!27010 (arr!12951 (Array (_ BitVec 32) (_ BitVec 64))) (size!13303 (_ BitVec 32))) )
))
(declare-fun lt!202512 () array!27009)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27009 (_ BitVec 32)) Bool)

(assert (=> b!440129 (= res!260365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202512 mask!1025))))

(declare-fun _keys!709 () array!27009)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440129 (= lt!202512 (array!27010 (store (arr!12951 _keys!709) i!563 k!794) (size!13303 _keys!709)))))

(declare-fun b!440130 () Bool)

(declare-fun res!260367 () Bool)

(assert (=> b!440130 (=> (not res!260367) (not e!259339))))

(assert (=> b!440130 (= res!260367 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13303 _keys!709))))))

(declare-fun b!440131 () Bool)

(declare-fun res!260369 () Bool)

(assert (=> b!440131 (=> (not res!260369) (not e!259339))))

(declare-datatypes ((List!7739 0))(
  ( (Nil!7736) (Cons!7735 (h!8591 (_ BitVec 64)) (t!13503 List!7739)) )
))
(declare-fun arrayNoDuplicates!0 (array!27009 (_ BitVec 32) List!7739) Bool)

(assert (=> b!440131 (= res!260369 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7736))))

(declare-fun b!440132 () Bool)

(declare-fun res!260361 () Bool)

(assert (=> b!440132 (=> (not res!260361) (not e!259339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440132 (= res!260361 (validMask!0 mask!1025))))

(declare-fun res!260370 () Bool)

(assert (=> start!40198 (=> (not res!260370) (not e!259339))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40198 (= res!260370 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13303 _keys!709))))))

(assert (=> start!40198 e!259339))

(declare-fun tp_is_empty!11609 () Bool)

(assert (=> start!40198 tp_is_empty!11609))

(assert (=> start!40198 tp!36899))

(assert (=> start!40198 true))

(declare-datatypes ((V!16583 0))(
  ( (V!16584 (val!5849 Int)) )
))
(declare-datatypes ((ValueCell!5461 0))(
  ( (ValueCellFull!5461 (v!8092 V!16583)) (EmptyCell!5461) )
))
(declare-datatypes ((array!27011 0))(
  ( (array!27012 (arr!12952 (Array (_ BitVec 32) ValueCell!5461)) (size!13304 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27011)

(declare-fun e!259334 () Bool)

(declare-fun array_inv!9392 (array!27011) Bool)

(assert (=> start!40198 (and (array_inv!9392 _values!549) e!259334)))

(declare-fun array_inv!9393 (array!27009) Bool)

(assert (=> start!40198 (array_inv!9393 _keys!709)))

(declare-fun mapIsEmpty!19035 () Bool)

(declare-fun mapRes!19035 () Bool)

(assert (=> mapIsEmpty!19035 mapRes!19035))

(declare-fun b!440133 () Bool)

(declare-fun res!260368 () Bool)

(assert (=> b!440133 (=> (not res!260368) (not e!259339))))

(assert (=> b!440133 (= res!260368 (or (= (select (arr!12951 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12951 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440134 () Bool)

(declare-fun e!259335 () Bool)

(assert (=> b!440134 (= e!259335 (not true))))

(declare-fun minValue!515 () V!16583)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16583)

(declare-fun lt!202509 () array!27011)

(declare-fun v!412 () V!16583)

(declare-datatypes ((tuple2!7698 0))(
  ( (tuple2!7699 (_1!3859 (_ BitVec 64)) (_2!3859 V!16583)) )
))
(declare-datatypes ((List!7740 0))(
  ( (Nil!7737) (Cons!7736 (h!8592 tuple2!7698) (t!13504 List!7740)) )
))
(declare-datatypes ((ListLongMap!6625 0))(
  ( (ListLongMap!6626 (toList!3328 List!7740)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1510 (array!27009 array!27011 (_ BitVec 32) (_ BitVec 32) V!16583 V!16583 (_ BitVec 32) Int) ListLongMap!6625)

(declare-fun +!1464 (ListLongMap!6625 tuple2!7698) ListLongMap!6625)

(assert (=> b!440134 (= (getCurrentListMapNoExtraKeys!1510 lt!202512 lt!202509 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1464 (getCurrentListMapNoExtraKeys!1510 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7699 k!794 v!412)))))

(declare-datatypes ((Unit!13043 0))(
  ( (Unit!13044) )
))
(declare-fun lt!202510 () Unit!13043)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!642 (array!27009 array!27011 (_ BitVec 32) (_ BitVec 32) V!16583 V!16583 (_ BitVec 32) (_ BitVec 64) V!16583 (_ BitVec 32) Int) Unit!13043)

(assert (=> b!440134 (= lt!202510 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!642 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!19035 () Bool)

(declare-fun tp!36900 () Bool)

(declare-fun e!259336 () Bool)

(assert (=> mapNonEmpty!19035 (= mapRes!19035 (and tp!36900 e!259336))))

(declare-fun mapValue!19035 () ValueCell!5461)

(declare-fun mapKey!19035 () (_ BitVec 32))

(declare-fun mapRest!19035 () (Array (_ BitVec 32) ValueCell!5461))

(assert (=> mapNonEmpty!19035 (= (arr!12952 _values!549) (store mapRest!19035 mapKey!19035 mapValue!19035))))

(declare-fun b!440135 () Bool)

(declare-fun e!259338 () Bool)

(assert (=> b!440135 (= e!259338 tp_is_empty!11609)))

(declare-fun b!440136 () Bool)

(declare-fun res!260360 () Bool)

(assert (=> b!440136 (=> (not res!260360) (not e!259337))))

(assert (=> b!440136 (= res!260360 (bvsle from!863 i!563))))

(declare-fun b!440137 () Bool)

(declare-fun res!260359 () Bool)

(assert (=> b!440137 (=> (not res!260359) (not e!259337))))

(assert (=> b!440137 (= res!260359 (arrayNoDuplicates!0 lt!202512 #b00000000000000000000000000000000 Nil!7736))))

(declare-fun b!440138 () Bool)

(declare-fun res!260364 () Bool)

(assert (=> b!440138 (=> (not res!260364) (not e!259339))))

(assert (=> b!440138 (= res!260364 (and (= (size!13304 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13303 _keys!709) (size!13304 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440139 () Bool)

(assert (=> b!440139 (= e!259336 tp_is_empty!11609)))

(declare-fun b!440140 () Bool)

(declare-fun res!260366 () Bool)

(assert (=> b!440140 (=> (not res!260366) (not e!259339))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440140 (= res!260366 (validKeyInArray!0 k!794))))

(declare-fun b!440141 () Bool)

(assert (=> b!440141 (= e!259337 e!259335)))

(declare-fun res!260358 () Bool)

(assert (=> b!440141 (=> (not res!260358) (not e!259335))))

(assert (=> b!440141 (= res!260358 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202511 () ListLongMap!6625)

(assert (=> b!440141 (= lt!202511 (getCurrentListMapNoExtraKeys!1510 lt!202512 lt!202509 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!440141 (= lt!202509 (array!27012 (store (arr!12952 _values!549) i!563 (ValueCellFull!5461 v!412)) (size!13304 _values!549)))))

(declare-fun lt!202508 () ListLongMap!6625)

(assert (=> b!440141 (= lt!202508 (getCurrentListMapNoExtraKeys!1510 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440142 () Bool)

(assert (=> b!440142 (= e!259334 (and e!259338 mapRes!19035))))

(declare-fun condMapEmpty!19035 () Bool)

(declare-fun mapDefault!19035 () ValueCell!5461)

