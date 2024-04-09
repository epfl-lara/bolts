; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77638 () Bool)

(assert start!77638)

(declare-fun b_free!16195 () Bool)

(declare-fun b_next!16195 () Bool)

(assert (=> start!77638 (= b_free!16195 (not b_next!16195))))

(declare-fun tp!56847 () Bool)

(declare-fun b_and!26579 () Bool)

(assert (=> start!77638 (= tp!56847 b_and!26579)))

(declare-fun res!610356 () Bool)

(declare-fun e!506807 () Bool)

(assert (=> start!77638 (=> (not res!610356) (not e!506807))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77638 (= res!610356 (validMask!0 mask!1756))))

(assert (=> start!77638 e!506807))

(declare-datatypes ((V!29783 0))(
  ( (V!29784 (val!9357 Int)) )
))
(declare-datatypes ((ValueCell!8825 0))(
  ( (ValueCellFull!8825 (v!11862 V!29783)) (EmptyCell!8825) )
))
(declare-datatypes ((array!53256 0))(
  ( (array!53257 (arr!25583 (Array (_ BitVec 32) ValueCell!8825)) (size!26043 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53256)

(declare-fun e!506812 () Bool)

(declare-fun array_inv!20024 (array!53256) Bool)

(assert (=> start!77638 (and (array_inv!20024 _values!1152) e!506812)))

(assert (=> start!77638 tp!56847))

(assert (=> start!77638 true))

(declare-fun tp_is_empty!18613 () Bool)

(assert (=> start!77638 tp_is_empty!18613))

(declare-datatypes ((array!53258 0))(
  ( (array!53259 (arr!25584 (Array (_ BitVec 32) (_ BitVec 64))) (size!26044 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53258)

(declare-fun array_inv!20025 (array!53258) Bool)

(assert (=> start!77638 (array_inv!20025 _keys!1386)))

(declare-fun b!904401 () Bool)

(declare-fun e!506811 () Bool)

(assert (=> b!904401 (= e!506811 tp_is_empty!18613)))

(declare-fun mapIsEmpty!29632 () Bool)

(declare-fun mapRes!29632 () Bool)

(assert (=> mapIsEmpty!29632 mapRes!29632))

(declare-fun b!904402 () Bool)

(declare-fun e!506808 () Bool)

(declare-fun e!506810 () Bool)

(assert (=> b!904402 (= e!506808 e!506810)))

(declare-fun res!610352 () Bool)

(assert (=> b!904402 (=> res!610352 e!506810)))

(declare-datatypes ((tuple2!12178 0))(
  ( (tuple2!12179 (_1!6099 (_ BitVec 64)) (_2!6099 V!29783)) )
))
(declare-datatypes ((List!18052 0))(
  ( (Nil!18049) (Cons!18048 (h!19194 tuple2!12178) (t!25443 List!18052)) )
))
(declare-datatypes ((ListLongMap!10889 0))(
  ( (ListLongMap!10890 (toList!5460 List!18052)) )
))
(declare-fun lt!408208 () ListLongMap!10889)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4473 (ListLongMap!10889 (_ BitVec 64)) Bool)

(assert (=> b!904402 (= res!610352 (not (contains!4473 lt!408208 k!1033)))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29783)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29783)

(declare-fun getCurrentListMap!2697 (array!53258 array!53256 (_ BitVec 32) (_ BitVec 32) V!29783 V!29783 (_ BitVec 32) Int) ListLongMap!10889)

(assert (=> b!904402 (= lt!408208 (getCurrentListMap!2697 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904403 () Bool)

(declare-fun res!610349 () Bool)

(assert (=> b!904403 (=> (not res!610349) (not e!506807))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904403 (= res!610349 (inRange!0 i!717 mask!1756))))

(declare-fun b!904404 () Bool)

(assert (=> b!904404 (= e!506807 (not e!506808))))

(declare-fun res!610351 () Bool)

(assert (=> b!904404 (=> res!610351 e!506808)))

(assert (=> b!904404 (= res!610351 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26044 _keys!1386))))))

(declare-fun arrayContainsKey!0 (array!53258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904404 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30651 0))(
  ( (Unit!30652) )
))
(declare-fun lt!408209 () Unit!30651)

(declare-fun lemmaKeyInListMapIsInArray!188 (array!53258 array!53256 (_ BitVec 32) (_ BitVec 32) V!29783 V!29783 (_ BitVec 64) Int) Unit!30651)

(assert (=> b!904404 (= lt!408209 (lemmaKeyInListMapIsInArray!188 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!904405 () Bool)

(declare-fun res!610355 () Bool)

(assert (=> b!904405 (=> (not res!610355) (not e!506807))))

(assert (=> b!904405 (= res!610355 (and (= (select (arr!25584 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904406 () Bool)

(declare-fun res!610353 () Bool)

(assert (=> b!904406 (=> (not res!610353) (not e!506807))))

(assert (=> b!904406 (= res!610353 (and (= (size!26043 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26044 _keys!1386) (size!26043 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904407 () Bool)

(declare-fun res!610354 () Bool)

(assert (=> b!904407 (=> (not res!610354) (not e!506807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53258 (_ BitVec 32)) Bool)

(assert (=> b!904407 (= res!610354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!904408 () Bool)

(declare-fun res!610348 () Bool)

(assert (=> b!904408 (=> (not res!610348) (not e!506807))))

(assert (=> b!904408 (= res!610348 (contains!4473 (getCurrentListMap!2697 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!904409 () Bool)

(assert (=> b!904409 (= e!506812 (and e!506811 mapRes!29632))))

(declare-fun condMapEmpty!29632 () Bool)

(declare-fun mapDefault!29632 () ValueCell!8825)

