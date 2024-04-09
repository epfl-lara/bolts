; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39786 () Bool)

(assert start!39786)

(declare-fun b_free!10045 () Bool)

(declare-fun b_next!10045 () Bool)

(assert (=> start!39786 (= b_free!10045 (not b_next!10045))))

(declare-fun tp!35663 () Bool)

(declare-fun b_and!17767 () Bool)

(assert (=> start!39786 (= tp!35663 b_and!17767)))

(declare-fun mapNonEmpty!18417 () Bool)

(declare-fun mapRes!18417 () Bool)

(declare-fun tp!35664 () Bool)

(declare-fun e!253903 () Bool)

(assert (=> mapNonEmpty!18417 (= mapRes!18417 (and tp!35664 e!253903))))

(declare-datatypes ((V!16035 0))(
  ( (V!16036 (val!5643 Int)) )
))
(declare-datatypes ((ValueCell!5255 0))(
  ( (ValueCellFull!5255 (v!7886 V!16035)) (EmptyCell!5255) )
))
(declare-fun mapRest!18417 () (Array (_ BitVec 32) ValueCell!5255))

(declare-datatypes ((array!26211 0))(
  ( (array!26212 (arr!12552 (Array (_ BitVec 32) ValueCell!5255)) (size!12904 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26211)

(declare-fun mapValue!18417 () ValueCell!5255)

(declare-fun mapKey!18417 () (_ BitVec 32))

(assert (=> mapNonEmpty!18417 (= (arr!12552 _values!549) (store mapRest!18417 mapKey!18417 mapValue!18417))))

(declare-fun b!428471 () Bool)

(declare-fun res!251608 () Bool)

(declare-fun e!253895 () Bool)

(assert (=> b!428471 (=> (not res!251608) (not e!253895))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428471 (= res!251608 (bvsle from!863 i!563))))

(declare-fun b!428472 () Bool)

(declare-datatypes ((Unit!12537 0))(
  ( (Unit!12538) )
))
(declare-fun e!253901 () Unit!12537)

(declare-fun Unit!12539 () Unit!12537)

(assert (=> b!428472 (= e!253901 Unit!12539)))

(declare-fun lt!195829 () Unit!12537)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26213 0))(
  ( (array!26214 (arr!12553 (Array (_ BitVec 32) (_ BitVec 64))) (size!12905 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26213)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26213 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12537)

(assert (=> b!428472 (= lt!195829 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!428472 false))

(declare-fun b!428473 () Bool)

(declare-fun res!251613 () Bool)

(declare-fun e!253896 () Bool)

(assert (=> b!428473 (=> (not res!251613) (not e!253896))))

(assert (=> b!428473 (= res!251613 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12905 _keys!709))))))

(declare-fun b!428474 () Bool)

(declare-fun res!251614 () Bool)

(assert (=> b!428474 (=> (not res!251614) (not e!253896))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!428474 (= res!251614 (and (= (size!12904 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12905 _keys!709) (size!12904 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!251606 () Bool)

(assert (=> start!39786 (=> (not res!251606) (not e!253896))))

(assert (=> start!39786 (= res!251606 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12905 _keys!709))))))

(assert (=> start!39786 e!253896))

(declare-fun tp_is_empty!11197 () Bool)

(assert (=> start!39786 tp_is_empty!11197))

(assert (=> start!39786 tp!35663))

(assert (=> start!39786 true))

(declare-fun e!253897 () Bool)

(declare-fun array_inv!9134 (array!26211) Bool)

(assert (=> start!39786 (and (array_inv!9134 _values!549) e!253897)))

(declare-fun array_inv!9135 (array!26213) Bool)

(assert (=> start!39786 (array_inv!9135 _keys!709)))

(declare-fun b!428475 () Bool)

(declare-fun res!251612 () Bool)

(assert (=> b!428475 (=> (not res!251612) (not e!253896))))

(assert (=> b!428475 (= res!251612 (or (= (select (arr!12553 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12553 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!428476 () Bool)

(declare-fun e!253899 () Bool)

(assert (=> b!428476 (= e!253899 tp_is_empty!11197)))

(declare-fun b!428477 () Bool)

(declare-fun res!251617 () Bool)

(assert (=> b!428477 (=> (not res!251617) (not e!253896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428477 (= res!251617 (validMask!0 mask!1025))))

(declare-fun b!428478 () Bool)

(declare-fun e!253900 () Bool)

(assert (=> b!428478 (= e!253895 e!253900)))

(declare-fun res!251607 () Bool)

(assert (=> b!428478 (=> (not res!251607) (not e!253900))))

(assert (=> b!428478 (= res!251607 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16035)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7362 0))(
  ( (tuple2!7363 (_1!3691 (_ BitVec 64)) (_2!3691 V!16035)) )
))
(declare-datatypes ((List!7412 0))(
  ( (Nil!7409) (Cons!7408 (h!8264 tuple2!7362) (t!12914 List!7412)) )
))
(declare-datatypes ((ListLongMap!6289 0))(
  ( (ListLongMap!6290 (toList!3160 List!7412)) )
))
(declare-fun lt!195834 () ListLongMap!6289)

(declare-fun zeroValue!515 () V!16035)

(declare-fun lt!195832 () array!26213)

(declare-fun lt!195835 () array!26211)

(declare-fun getCurrentListMapNoExtraKeys!1359 (array!26213 array!26211 (_ BitVec 32) (_ BitVec 32) V!16035 V!16035 (_ BitVec 32) Int) ListLongMap!6289)

(assert (=> b!428478 (= lt!195834 (getCurrentListMapNoExtraKeys!1359 lt!195832 lt!195835 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16035)

(assert (=> b!428478 (= lt!195835 (array!26212 (store (arr!12552 _values!549) i!563 (ValueCellFull!5255 v!412)) (size!12904 _values!549)))))

(declare-fun lt!195828 () ListLongMap!6289)

(assert (=> b!428478 (= lt!195828 (getCurrentListMapNoExtraKeys!1359 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!428479 () Bool)

(declare-fun res!251611 () Bool)

(assert (=> b!428479 (=> (not res!251611) (not e!253896))))

(declare-fun arrayContainsKey!0 (array!26213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!428479 (= res!251611 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!428480 () Bool)

(assert (=> b!428480 (= e!253896 e!253895)))

(declare-fun res!251610 () Bool)

(assert (=> b!428480 (=> (not res!251610) (not e!253895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26213 (_ BitVec 32)) Bool)

(assert (=> b!428480 (= res!251610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195832 mask!1025))))

(assert (=> b!428480 (= lt!195832 (array!26214 (store (arr!12553 _keys!709) i!563 k!794) (size!12905 _keys!709)))))

(declare-fun b!428481 () Bool)

(assert (=> b!428481 (= e!253897 (and e!253899 mapRes!18417))))

(declare-fun condMapEmpty!18417 () Bool)

(declare-fun mapDefault!18417 () ValueCell!5255)

