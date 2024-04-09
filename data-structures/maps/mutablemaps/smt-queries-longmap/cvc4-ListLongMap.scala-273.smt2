; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4466 () Bool)

(assert start!4466)

(declare-fun b_free!1229 () Bool)

(declare-fun b_next!1229 () Bool)

(assert (=> start!4466 (= b_free!1229 (not b_next!1229))))

(declare-fun tp!5125 () Bool)

(declare-fun b_and!2053 () Bool)

(assert (=> start!4466 (= tp!5125 b_and!2053)))

(declare-fun b!34680 () Bool)

(declare-fun res!21043 () Bool)

(declare-fun e!21969 () Bool)

(assert (=> b!34680 (=> (not res!21043) (not e!21969))))

(declare-datatypes ((array!2371 0))(
  ( (array!2372 (arr!1133 (Array (_ BitVec 32) (_ BitVec 64))) (size!1234 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2371)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2371 (_ BitVec 32)) Bool)

(assert (=> b!34680 (= res!21043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1921 () Bool)

(declare-fun mapRes!1921 () Bool)

(assert (=> mapIsEmpty!1921 mapRes!1921))

(declare-fun mapNonEmpty!1921 () Bool)

(declare-fun tp!5124 () Bool)

(declare-fun e!21972 () Bool)

(assert (=> mapNonEmpty!1921 (= mapRes!1921 (and tp!5124 e!21972))))

(declare-datatypes ((V!1935 0))(
  ( (V!1936 (val!818 Int)) )
))
(declare-datatypes ((ValueCell!592 0))(
  ( (ValueCellFull!592 (v!1913 V!1935)) (EmptyCell!592) )
))
(declare-datatypes ((array!2373 0))(
  ( (array!2374 (arr!1134 (Array (_ BitVec 32) ValueCell!592)) (size!1235 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2373)

(declare-fun mapKey!1921 () (_ BitVec 32))

(declare-fun mapRest!1921 () (Array (_ BitVec 32) ValueCell!592))

(declare-fun mapValue!1921 () ValueCell!592)

(assert (=> mapNonEmpty!1921 (= (arr!1134 _values!1501) (store mapRest!1921 mapKey!1921 mapValue!1921))))

(declare-fun b!34681 () Bool)

(declare-fun res!21037 () Bool)

(assert (=> b!34681 (=> (not res!21037) (not e!21969))))

(declare-datatypes ((List!918 0))(
  ( (Nil!915) (Cons!914 (h!1481 (_ BitVec 64)) (t!3625 List!918)) )
))
(declare-fun arrayNoDuplicates!0 (array!2371 (_ BitVec 32) List!918) Bool)

(assert (=> b!34681 (= res!21037 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!915))))

(declare-fun b!34682 () Bool)

(declare-fun res!21041 () Bool)

(assert (=> b!34682 (=> (not res!21041) (not e!21969))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1935)

(declare-fun minValue!1443 () V!1935)

(declare-datatypes ((tuple2!1314 0))(
  ( (tuple2!1315 (_1!667 (_ BitVec 64)) (_2!667 V!1935)) )
))
(declare-datatypes ((List!919 0))(
  ( (Nil!916) (Cons!915 (h!1482 tuple2!1314) (t!3626 List!919)) )
))
(declare-datatypes ((ListLongMap!895 0))(
  ( (ListLongMap!896 (toList!463 List!919)) )
))
(declare-fun contains!406 (ListLongMap!895 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!284 (array!2371 array!2373 (_ BitVec 32) (_ BitVec 32) V!1935 V!1935 (_ BitVec 32) Int) ListLongMap!895)

(assert (=> b!34682 (= res!21041 (not (contains!406 (getCurrentListMap!284 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!34683 () Bool)

(assert (=> b!34683 (= e!21969 false)))

(declare-datatypes ((SeekEntryResult!154 0))(
  ( (MissingZero!154 (index!2738 (_ BitVec 32))) (Found!154 (index!2739 (_ BitVec 32))) (Intermediate!154 (undefined!966 Bool) (index!2740 (_ BitVec 32)) (x!6940 (_ BitVec 32))) (Undefined!154) (MissingVacant!154 (index!2741 (_ BitVec 32))) )
))
(declare-fun lt!12811 () SeekEntryResult!154)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2371 (_ BitVec 32)) SeekEntryResult!154)

(assert (=> b!34683 (= lt!12811 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!34684 () Bool)

(declare-fun res!21040 () Bool)

(assert (=> b!34684 (=> (not res!21040) (not e!21969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!34684 (= res!21040 (validKeyInArray!0 k!1304))))

(declare-fun b!34685 () Bool)

(declare-fun e!21971 () Bool)

(declare-fun e!21968 () Bool)

(assert (=> b!34685 (= e!21971 (and e!21968 mapRes!1921))))

(declare-fun condMapEmpty!1921 () Bool)

(declare-fun mapDefault!1921 () ValueCell!592)

