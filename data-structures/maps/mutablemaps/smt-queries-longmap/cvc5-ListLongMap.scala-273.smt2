; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4462 () Bool)

(assert start!4462)

(declare-fun b_free!1225 () Bool)

(declare-fun b_next!1225 () Bool)

(assert (=> start!4462 (= b_free!1225 (not b_next!1225))))

(declare-fun tp!5112 () Bool)

(declare-fun b_and!2049 () Bool)

(assert (=> start!4462 (= tp!5112 b_and!2049)))

(declare-fun b!34620 () Bool)

(declare-fun e!21939 () Bool)

(assert (=> b!34620 (= e!21939 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((array!2363 0))(
  ( (array!2364 (arr!1129 (Array (_ BitVec 32) (_ BitVec 64))) (size!1230 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2363)

(declare-datatypes ((SeekEntryResult!152 0))(
  ( (MissingZero!152 (index!2730 (_ BitVec 32))) (Found!152 (index!2731 (_ BitVec 32))) (Intermediate!152 (undefined!964 Bool) (index!2732 (_ BitVec 32)) (x!6938 (_ BitVec 32))) (Undefined!152) (MissingVacant!152 (index!2733 (_ BitVec 32))) )
))
(declare-fun lt!12805 () SeekEntryResult!152)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2363 (_ BitVec 32)) SeekEntryResult!152)

(assert (=> b!34620 (= lt!12805 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!34621 () Bool)

(declare-fun res!20999 () Bool)

(assert (=> b!34621 (=> (not res!20999) (not e!21939))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1931 0))(
  ( (V!1932 (val!816 Int)) )
))
(declare-datatypes ((ValueCell!590 0))(
  ( (ValueCellFull!590 (v!1911 V!1931)) (EmptyCell!590) )
))
(declare-datatypes ((array!2365 0))(
  ( (array!2366 (arr!1130 (Array (_ BitVec 32) ValueCell!590)) (size!1231 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2365)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1931)

(declare-fun minValue!1443 () V!1931)

(declare-datatypes ((tuple2!1310 0))(
  ( (tuple2!1311 (_1!665 (_ BitVec 64)) (_2!665 V!1931)) )
))
(declare-datatypes ((List!915 0))(
  ( (Nil!912) (Cons!911 (h!1478 tuple2!1310) (t!3622 List!915)) )
))
(declare-datatypes ((ListLongMap!891 0))(
  ( (ListLongMap!892 (toList!461 List!915)) )
))
(declare-fun contains!404 (ListLongMap!891 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!282 (array!2363 array!2365 (_ BitVec 32) (_ BitVec 32) V!1931 V!1931 (_ BitVec 32) Int) ListLongMap!891)

(assert (=> b!34621 (= res!20999 (not (contains!404 (getCurrentListMap!282 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun mapIsEmpty!1915 () Bool)

(declare-fun mapRes!1915 () Bool)

(assert (=> mapIsEmpty!1915 mapRes!1915))

(declare-fun b!34622 () Bool)

(declare-fun e!21938 () Bool)

(declare-fun e!21940 () Bool)

(assert (=> b!34622 (= e!21938 (and e!21940 mapRes!1915))))

(declare-fun condMapEmpty!1915 () Bool)

(declare-fun mapDefault!1915 () ValueCell!590)

