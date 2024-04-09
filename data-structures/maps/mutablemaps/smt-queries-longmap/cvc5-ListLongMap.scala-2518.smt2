; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38934 () Bool)

(assert start!38934)

(declare-fun res!235359 () Bool)

(declare-fun e!244504 () Bool)

(assert (=> start!38934 (=> (not res!235359) (not e!244504))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24545 0))(
  ( (array!24546 (arr!11719 (Array (_ BitVec 32) (_ BitVec 64))) (size!12071 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24545)

(assert (=> start!38934 (= res!235359 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12071 _keys!709))))))

(assert (=> start!38934 e!244504))

(assert (=> start!38934 true))

(declare-datatypes ((V!14899 0))(
  ( (V!14900 (val!5217 Int)) )
))
(declare-datatypes ((ValueCell!4829 0))(
  ( (ValueCellFull!4829 (v!7460 V!14899)) (EmptyCell!4829) )
))
(declare-datatypes ((array!24547 0))(
  ( (array!24548 (arr!11720 (Array (_ BitVec 32) ValueCell!4829)) (size!12072 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24547)

(declare-fun e!244505 () Bool)

(declare-fun array_inv!8560 (array!24547) Bool)

(assert (=> start!38934 (and (array_inv!8560 _values!549) e!244505)))

(declare-fun array_inv!8561 (array!24545) Bool)

(assert (=> start!38934 (array_inv!8561 _keys!709)))

(declare-fun b!407054 () Bool)

(declare-fun res!235361 () Bool)

(assert (=> b!407054 (=> (not res!235361) (not e!244504))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!407054 (= res!235361 (and (= (size!12072 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12071 _keys!709) (size!12072 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17139 () Bool)

(declare-fun mapRes!17139 () Bool)

(assert (=> mapIsEmpty!17139 mapRes!17139))

(declare-fun b!407055 () Bool)

(declare-fun res!235355 () Bool)

(assert (=> b!407055 (=> (not res!235355) (not e!244504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24545 (_ BitVec 32)) Bool)

(assert (=> b!407055 (= res!235355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407056 () Bool)

(declare-fun res!235354 () Bool)

(assert (=> b!407056 (=> (not res!235354) (not e!244504))))

(declare-datatypes ((List!6779 0))(
  ( (Nil!6776) (Cons!6775 (h!7631 (_ BitVec 64)) (t!11961 List!6779)) )
))
(declare-fun arrayNoDuplicates!0 (array!24545 (_ BitVec 32) List!6779) Bool)

(assert (=> b!407056 (= res!235354 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6776))))

(declare-fun b!407057 () Bool)

(declare-fun e!244507 () Bool)

(assert (=> b!407057 (= e!244507 false)))

(declare-fun lt!188577 () Bool)

(declare-fun lt!188576 () array!24545)

(assert (=> b!407057 (= lt!188577 (arrayNoDuplicates!0 lt!188576 #b00000000000000000000000000000000 Nil!6776))))

(declare-fun b!407058 () Bool)

(declare-fun res!235356 () Bool)

(assert (=> b!407058 (=> (not res!235356) (not e!244504))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407058 (= res!235356 (or (= (select (arr!11719 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11719 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407059 () Bool)

(declare-fun e!244503 () Bool)

(declare-fun tp_is_empty!10345 () Bool)

(assert (=> b!407059 (= e!244503 tp_is_empty!10345)))

(declare-fun b!407060 () Bool)

(declare-fun e!244506 () Bool)

(assert (=> b!407060 (= e!244505 (and e!244506 mapRes!17139))))

(declare-fun condMapEmpty!17139 () Bool)

(declare-fun mapDefault!17139 () ValueCell!4829)

