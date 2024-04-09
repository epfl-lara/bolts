; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37664 () Bool)

(assert start!37664)

(declare-fun mapNonEmpty!15711 () Bool)

(declare-fun mapRes!15711 () Bool)

(declare-fun tp!31038 () Bool)

(declare-fun e!233900 () Bool)

(assert (=> mapNonEmpty!15711 (= mapRes!15711 (and tp!31038 e!233900))))

(declare-fun mapKey!15711 () (_ BitVec 32))

(declare-datatypes ((V!13679 0))(
  ( (V!13680 (val!4760 Int)) )
))
(declare-datatypes ((ValueCell!4372 0))(
  ( (ValueCellFull!4372 (v!6953 V!13679)) (EmptyCell!4372) )
))
(declare-datatypes ((array!22739 0))(
  ( (array!22740 (arr!10835 (Array (_ BitVec 32) ValueCell!4372)) (size!11187 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22739)

(declare-fun mapValue!15711 () ValueCell!4372)

(declare-fun mapRest!15711 () (Array (_ BitVec 32) ValueCell!4372))

(assert (=> mapNonEmpty!15711 (= (arr!10835 _values!506) (store mapRest!15711 mapKey!15711 mapValue!15711))))

(declare-fun mapIsEmpty!15711 () Bool)

(assert (=> mapIsEmpty!15711 mapRes!15711))

(declare-fun b!385335 () Bool)

(declare-fun res!219869 () Bool)

(declare-fun e!233903 () Bool)

(assert (=> b!385335 (=> (not res!219869) (not e!233903))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!22741 0))(
  ( (array!22742 (arr!10836 (Array (_ BitVec 32) (_ BitVec 64))) (size!11188 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22741)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!385335 (= res!219869 (and (= (size!11187 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11188 _keys!658) (size!11187 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385336 () Bool)

(declare-fun e!233902 () Bool)

(declare-fun e!233901 () Bool)

(assert (=> b!385336 (= e!233902 (and e!233901 mapRes!15711))))

(declare-fun condMapEmpty!15711 () Bool)

(declare-fun mapDefault!15711 () ValueCell!4372)

