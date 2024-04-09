; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37262 () Bool)

(assert start!37262)

(declare-fun b_free!8381 () Bool)

(declare-fun b_next!8381 () Bool)

(assert (=> start!37262 (= b_free!8381 (not b_next!8381))))

(declare-fun tp!29859 () Bool)

(declare-fun b_and!15641 () Bool)

(assert (=> start!37262 (= tp!29859 b_and!15641)))

(declare-fun b!376821 () Bool)

(declare-fun e!229461 () Bool)

(declare-fun tp_is_empty!9029 () Bool)

(assert (=> b!376821 (= e!229461 tp_is_empty!9029)))

(declare-fun b!376822 () Bool)

(declare-fun res!213170 () Bool)

(declare-fun e!229463 () Bool)

(assert (=> b!376822 (=> (not res!213170) (not e!229463))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13143 0))(
  ( (V!13144 (val!4559 Int)) )
))
(declare-datatypes ((ValueCell!4171 0))(
  ( (ValueCellFull!4171 (v!6752 V!13143)) (EmptyCell!4171) )
))
(declare-datatypes ((array!21957 0))(
  ( (array!21958 (arr!10444 (Array (_ BitVec 32) ValueCell!4171)) (size!10796 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21957)

(declare-datatypes ((array!21959 0))(
  ( (array!21960 (arr!10445 (Array (_ BitVec 32) (_ BitVec 64))) (size!10797 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21959)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!376822 (= res!213170 (and (= (size!10796 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10797 _keys!658) (size!10796 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376823 () Bool)

(declare-fun e!229462 () Bool)

(assert (=> b!376823 (= e!229463 e!229462)))

(declare-fun res!213165 () Bool)

(assert (=> b!376823 (=> (not res!213165) (not e!229462))))

(declare-fun lt!175099 () array!21959)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21959 (_ BitVec 32)) Bool)

(assert (=> b!376823 (= res!213165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175099 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376823 (= lt!175099 (array!21960 (store (arr!10445 _keys!658) i!548 k!778) (size!10797 _keys!658)))))

(declare-fun mapNonEmpty!15108 () Bool)

(declare-fun mapRes!15108 () Bool)

(declare-fun tp!29858 () Bool)

(assert (=> mapNonEmpty!15108 (= mapRes!15108 (and tp!29858 e!229461))))

(declare-fun mapKey!15108 () (_ BitVec 32))

(declare-fun mapRest!15108 () (Array (_ BitVec 32) ValueCell!4171))

(declare-fun mapValue!15108 () ValueCell!4171)

(assert (=> mapNonEmpty!15108 (= (arr!10444 _values!506) (store mapRest!15108 mapKey!15108 mapValue!15108))))

(declare-fun b!376824 () Bool)

(declare-fun res!213164 () Bool)

(assert (=> b!376824 (=> (not res!213164) (not e!229463))))

(assert (=> b!376824 (= res!213164 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10797 _keys!658))))))

(declare-fun b!376825 () Bool)

(declare-fun e!229464 () Bool)

(assert (=> b!376825 (= e!229464 tp_is_empty!9029)))

(declare-fun b!376826 () Bool)

(declare-fun e!229466 () Bool)

(assert (=> b!376826 (= e!229466 (and e!229464 mapRes!15108))))

(declare-fun condMapEmpty!15108 () Bool)

(declare-fun mapDefault!15108 () ValueCell!4171)

