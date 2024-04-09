; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83342 () Bool)

(assert start!83342)

(declare-fun b_free!19307 () Bool)

(declare-fun b_next!19307 () Bool)

(assert (=> start!83342 (= b_free!19307 (not b_next!19307))))

(declare-fun tp!67201 () Bool)

(declare-fun b_and!30853 () Bool)

(assert (=> start!83342 (= tp!67201 b_and!30853)))

(declare-fun b!972361 () Bool)

(declare-fun res!650973 () Bool)

(declare-fun e!548112 () Bool)

(assert (=> b!972361 (=> (not res!650973) (not e!548112))))

(declare-datatypes ((array!60437 0))(
  ( (array!60438 (arr!29078 (Array (_ BitVec 32) (_ BitVec 64))) (size!29558 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60437)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972361 (= res!650973 (validKeyInArray!0 (select (arr!29078 _keys!1717) i!822)))))

(declare-fun b!972362 () Bool)

(declare-fun e!548111 () Bool)

(declare-fun tp_is_empty!22205 () Bool)

(assert (=> b!972362 (= e!548111 tp_is_empty!22205)))

(declare-fun b!972363 () Bool)

(declare-fun res!650971 () Bool)

(assert (=> b!972363 (=> (not res!650971) (not e!548112))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34589 0))(
  ( (V!34590 (val!11153 Int)) )
))
(declare-datatypes ((ValueCell!10621 0))(
  ( (ValueCellFull!10621 (v!13712 V!34589)) (EmptyCell!10621) )
))
(declare-datatypes ((array!60439 0))(
  ( (array!60440 (arr!29079 (Array (_ BitVec 32) ValueCell!10621)) (size!29559 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60439)

(declare-fun zeroValue!1367 () V!34589)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34589)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14406 0))(
  ( (tuple2!14407 (_1!7213 (_ BitVec 64)) (_2!7213 V!34589)) )
))
(declare-datatypes ((List!20295 0))(
  ( (Nil!20292) (Cons!20291 (h!21453 tuple2!14406) (t!28708 List!20295)) )
))
(declare-datatypes ((ListLongMap!13117 0))(
  ( (ListLongMap!13118 (toList!6574 List!20295)) )
))
(declare-fun contains!5622 (ListLongMap!13117 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3759 (array!60437 array!60439 (_ BitVec 32) (_ BitVec 32) V!34589 V!34589 (_ BitVec 32) Int) ListLongMap!13117)

(assert (=> b!972363 (= res!650971 (contains!5622 (getCurrentListMap!3759 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29078 _keys!1717) i!822)))))

(declare-fun b!972364 () Bool)

(declare-fun e!548110 () Bool)

(declare-fun mapRes!35317 () Bool)

(assert (=> b!972364 (= e!548110 (and e!548111 mapRes!35317))))

(declare-fun condMapEmpty!35317 () Bool)

(declare-fun mapDefault!35317 () ValueCell!10621)

