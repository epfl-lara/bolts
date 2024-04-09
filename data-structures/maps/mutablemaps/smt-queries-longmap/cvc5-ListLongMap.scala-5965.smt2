; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77644 () Bool)

(assert start!77644)

(declare-fun b_free!16201 () Bool)

(declare-fun b_next!16201 () Bool)

(assert (=> start!77644 (= b_free!16201 (not b_next!16201))))

(declare-fun tp!56866 () Bool)

(declare-fun b_and!26585 () Bool)

(assert (=> start!77644 (= tp!56866 b_and!26585)))

(declare-fun b!904509 () Bool)

(declare-fun res!610434 () Bool)

(declare-fun e!506871 () Bool)

(assert (=> b!904509 (=> (not res!610434) (not e!506871))))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53268 0))(
  ( (array!53269 (arr!25589 (Array (_ BitVec 32) (_ BitVec 64))) (size!26049 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53268)

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!904509 (= res!610434 (and (= (select (arr!25589 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904510 () Bool)

(declare-fun e!506872 () Bool)

(declare-fun e!506876 () Bool)

(assert (=> b!904510 (= e!506872 e!506876)))

(declare-fun res!610435 () Bool)

(assert (=> b!904510 (=> res!610435 e!506876)))

(declare-datatypes ((V!29791 0))(
  ( (V!29792 (val!9360 Int)) )
))
(declare-datatypes ((tuple2!12184 0))(
  ( (tuple2!12185 (_1!6102 (_ BitVec 64)) (_2!6102 V!29791)) )
))
(declare-datatypes ((List!18056 0))(
  ( (Nil!18053) (Cons!18052 (h!19198 tuple2!12184) (t!25447 List!18056)) )
))
(declare-datatypes ((ListLongMap!10895 0))(
  ( (ListLongMap!10896 (toList!5463 List!18056)) )
))
(declare-fun lt!408235 () ListLongMap!10895)

(declare-fun contains!4476 (ListLongMap!10895 (_ BitVec 64)) Bool)

(assert (=> b!904510 (= res!610435 (not (contains!4476 lt!408235 k!1033)))))

(declare-datatypes ((ValueCell!8828 0))(
  ( (ValueCellFull!8828 (v!11865 V!29791)) (EmptyCell!8828) )
))
(declare-datatypes ((array!53270 0))(
  ( (array!53271 (arr!25590 (Array (_ BitVec 32) ValueCell!8828)) (size!26050 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53270)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29791)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29791)

(declare-fun getCurrentListMap!2700 (array!53268 array!53270 (_ BitVec 32) (_ BitVec 32) V!29791 V!29791 (_ BitVec 32) Int) ListLongMap!10895)

(assert (=> b!904510 (= lt!408235 (getCurrentListMap!2700 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904511 () Bool)

(declare-fun res!610431 () Bool)

(assert (=> b!904511 (=> (not res!610431) (not e!506871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53268 (_ BitVec 32)) Bool)

(assert (=> b!904511 (= res!610431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904512 () Bool)

(declare-fun res!610429 () Bool)

(assert (=> b!904512 (=> (not res!610429) (not e!506871))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904512 (= res!610429 (inRange!0 i!717 mask!1756))))

(declare-fun b!904513 () Bool)

(declare-fun e!506870 () Bool)

(declare-fun e!506873 () Bool)

(declare-fun mapRes!29641 () Bool)

(assert (=> b!904513 (= e!506870 (and e!506873 mapRes!29641))))

(declare-fun condMapEmpty!29641 () Bool)

(declare-fun mapDefault!29641 () ValueCell!8828)

