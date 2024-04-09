; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83560 () Bool)

(assert start!83560)

(declare-fun b_free!19519 () Bool)

(declare-fun b_next!19519 () Bool)

(assert (=> start!83560 (= b_free!19519 (not b_next!19519))))

(declare-fun tp!67846 () Bool)

(declare-fun b_and!31151 () Bool)

(assert (=> start!83560 (= tp!67846 b_and!31151)))

(declare-fun b!975828 () Bool)

(declare-fun e!549977 () Bool)

(declare-fun e!549974 () Bool)

(assert (=> b!975828 (= e!549977 e!549974)))

(declare-fun res!653373 () Bool)

(assert (=> b!975828 (=> (not res!653373) (not e!549974))))

(declare-fun lt!432899 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975828 (= res!653373 (validKeyInArray!0 lt!432899))))

(declare-datatypes ((array!60861 0))(
  ( (array!60862 (arr!29290 (Array (_ BitVec 32) (_ BitVec 64))) (size!29770 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60861)

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!975828 (= lt!432899 (select (arr!29290 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-datatypes ((V!34881 0))(
  ( (V!34882 (val!11262 Int)) )
))
(declare-datatypes ((ValueCell!10730 0))(
  ( (ValueCellFull!10730 (v!13821 V!34881)) (EmptyCell!10730) )
))
(declare-datatypes ((array!60863 0))(
  ( (array!60864 (arr!29291 (Array (_ BitVec 32) ValueCell!10730)) (size!29771 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60863)

(declare-fun zeroValue!1367 () V!34881)

(declare-fun defaultEntry!1428 () Int)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((tuple2!14588 0))(
  ( (tuple2!14589 (_1!7304 (_ BitVec 64)) (_2!7304 V!34881)) )
))
(declare-datatypes ((List!20460 0))(
  ( (Nil!20457) (Cons!20456 (h!21618 tuple2!14588) (t!28959 List!20460)) )
))
(declare-datatypes ((ListLongMap!13299 0))(
  ( (ListLongMap!13300 (toList!6665 List!20460)) )
))
(declare-fun lt!432900 () ListLongMap!13299)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34881)

(declare-fun getCurrentListMap!3850 (array!60861 array!60863 (_ BitVec 32) (_ BitVec 32) V!34881 V!34881 (_ BitVec 32) Int) ListLongMap!13299)

(assert (=> b!975828 (= lt!432900 (getCurrentListMap!3850 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975829 () Bool)

(declare-fun e!549973 () Bool)

(declare-fun tp_is_empty!22423 () Bool)

(assert (=> b!975829 (= e!549973 tp_is_empty!22423)))

(declare-fun res!653375 () Bool)

(assert (=> start!83560 (=> (not res!653375) (not e!549977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83560 (= res!653375 (validMask!0 mask!2147))))

(assert (=> start!83560 e!549977))

(assert (=> start!83560 true))

(declare-fun e!549976 () Bool)

(declare-fun array_inv!22547 (array!60863) Bool)

(assert (=> start!83560 (and (array_inv!22547 _values!1425) e!549976)))

(assert (=> start!83560 tp_is_empty!22423))

(assert (=> start!83560 tp!67846))

(declare-fun array_inv!22548 (array!60861) Bool)

(assert (=> start!83560 (array_inv!22548 _keys!1717)))

(declare-fun b!975830 () Bool)

(declare-fun res!653370 () Bool)

(assert (=> b!975830 (=> (not res!653370) (not e!549977))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!975830 (= res!653370 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29770 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29770 _keys!1717))))))

(declare-fun b!975831 () Bool)

(declare-fun e!549978 () Bool)

(declare-fun mapRes!35644 () Bool)

(assert (=> b!975831 (= e!549976 (and e!549978 mapRes!35644))))

(declare-fun condMapEmpty!35644 () Bool)

(declare-fun mapDefault!35644 () ValueCell!10730)

