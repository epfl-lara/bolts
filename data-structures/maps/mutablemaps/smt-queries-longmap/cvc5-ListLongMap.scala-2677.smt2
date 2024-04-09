; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39888 () Bool)

(assert start!39888)

(declare-fun b_free!10147 () Bool)

(declare-fun b_next!10147 () Bool)

(assert (=> start!39888 (= b_free!10147 (not b_next!10147))))

(declare-fun tp!35969 () Bool)

(declare-fun b_and!17971 () Bool)

(assert (=> start!39888 (= tp!35969 b_and!17971)))

(declare-fun b!431563 () Bool)

(declare-fun res!253833 () Bool)

(declare-fun e!255360 () Bool)

(assert (=> b!431563 (=> (not res!253833) (not e!255360))))

(declare-datatypes ((array!26411 0))(
  ( (array!26412 (arr!12652 (Array (_ BitVec 32) (_ BitVec 64))) (size!13004 (_ BitVec 32))) )
))
(declare-fun lt!197779 () array!26411)

(declare-datatypes ((List!7497 0))(
  ( (Nil!7494) (Cons!7493 (h!8349 (_ BitVec 64)) (t!13101 List!7497)) )
))
(declare-fun arrayNoDuplicates!0 (array!26411 (_ BitVec 32) List!7497) Bool)

(assert (=> b!431563 (= res!253833 (arrayNoDuplicates!0 lt!197779 #b00000000000000000000000000000000 Nil!7494))))

(declare-fun b!431564 () Bool)

(declare-fun res!253843 () Bool)

(assert (=> b!431564 (=> (not res!253843) (not e!255360))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431564 (= res!253843 (bvsle from!863 i!563))))

(declare-fun b!431566 () Bool)

(declare-fun res!253845 () Bool)

(declare-fun e!255364 () Bool)

(assert (=> b!431566 (=> (not res!253845) (not e!255364))))

(declare-fun _keys!709 () array!26411)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26411 (_ BitVec 32)) Bool)

(assert (=> b!431566 (= res!253845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!431567 () Bool)

(declare-fun res!253835 () Bool)

(assert (=> b!431567 (=> (not res!253835) (not e!255364))))

(assert (=> b!431567 (= res!253835 (or (= (select (arr!12652 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12652 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431568 () Bool)

(declare-fun e!255363 () Bool)

(declare-fun tp_is_empty!11299 () Bool)

(assert (=> b!431568 (= e!255363 tp_is_empty!11299)))

(declare-fun b!431569 () Bool)

(declare-fun e!255358 () Bool)

(assert (=> b!431569 (= e!255360 e!255358)))

(declare-fun res!253841 () Bool)

(assert (=> b!431569 (=> (not res!253841) (not e!255358))))

(assert (=> b!431569 (= res!253841 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16171 0))(
  ( (V!16172 (val!5694 Int)) )
))
(declare-fun minValue!515 () V!16171)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16171)

(declare-datatypes ((tuple2!7444 0))(
  ( (tuple2!7445 (_1!3732 (_ BitVec 64)) (_2!3732 V!16171)) )
))
(declare-datatypes ((List!7498 0))(
  ( (Nil!7495) (Cons!7494 (h!8350 tuple2!7444) (t!13102 List!7498)) )
))
(declare-datatypes ((ListLongMap!6371 0))(
  ( (ListLongMap!6372 (toList!3201 List!7498)) )
))
(declare-fun lt!197777 () ListLongMap!6371)

(declare-datatypes ((ValueCell!5306 0))(
  ( (ValueCellFull!5306 (v!7937 V!16171)) (EmptyCell!5306) )
))
(declare-datatypes ((array!26413 0))(
  ( (array!26414 (arr!12653 (Array (_ BitVec 32) ValueCell!5306)) (size!13005 (_ BitVec 32))) )
))
(declare-fun lt!197786 () array!26413)

(declare-fun getCurrentListMapNoExtraKeys!1395 (array!26411 array!26413 (_ BitVec 32) (_ BitVec 32) V!16171 V!16171 (_ BitVec 32) Int) ListLongMap!6371)

(assert (=> b!431569 (= lt!197777 (getCurrentListMapNoExtraKeys!1395 lt!197779 lt!197786 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26413)

(declare-fun v!412 () V!16171)

(assert (=> b!431569 (= lt!197786 (array!26414 (store (arr!12653 _values!549) i!563 (ValueCellFull!5306 v!412)) (size!13005 _values!549)))))

(declare-fun lt!197785 () ListLongMap!6371)

(assert (=> b!431569 (= lt!197785 (getCurrentListMapNoExtraKeys!1395 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!431570 () Bool)

(declare-fun res!253836 () Bool)

(assert (=> b!431570 (=> (not res!253836) (not e!255364))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431570 (= res!253836 (validMask!0 mask!1025))))

(declare-fun b!431571 () Bool)

(declare-fun res!253837 () Bool)

(assert (=> b!431571 (=> (not res!253837) (not e!255364))))

(assert (=> b!431571 (= res!253837 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7494))))

(declare-fun b!431572 () Bool)

(declare-fun res!253840 () Bool)

(assert (=> b!431572 (=> (not res!253840) (not e!255364))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431572 (= res!253840 (validKeyInArray!0 k!794))))

(declare-fun b!431573 () Bool)

(declare-datatypes ((Unit!12694 0))(
  ( (Unit!12695) )
))
(declare-fun e!255357 () Unit!12694)

(declare-fun Unit!12696 () Unit!12694)

(assert (=> b!431573 (= e!255357 Unit!12696)))

(declare-fun lt!197773 () Unit!12694)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26411 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12694)

(assert (=> b!431573 (= lt!197773 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!431573 false))

(declare-fun b!431574 () Bool)

(declare-fun e!255361 () Bool)

(declare-fun e!255359 () Bool)

(declare-fun mapRes!18570 () Bool)

(assert (=> b!431574 (= e!255361 (and e!255359 mapRes!18570))))

(declare-fun condMapEmpty!18570 () Bool)

(declare-fun mapDefault!18570 () ValueCell!5306)

