; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43592 () Bool)

(assert start!43592)

(declare-fun b_free!12341 () Bool)

(declare-fun b_next!12341 () Bool)

(assert (=> start!43592 (= b_free!12341 (not b_next!12341))))

(declare-fun tp!43309 () Bool)

(declare-fun b_and!21121 () Bool)

(assert (=> start!43592 (= tp!43309 b_and!21121)))

(declare-fun b!482708 () Bool)

(declare-fun res!287774 () Bool)

(declare-fun e!284076 () Bool)

(assert (=> b!482708 (=> (not res!287774) (not e!284076))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!482708 (= res!287774 (validKeyInArray!0 k!1332))))

(declare-fun b!482709 () Bool)

(declare-fun res!287776 () Bool)

(assert (=> b!482709 (=> (not res!287776) (not e!284076))))

(declare-datatypes ((array!31331 0))(
  ( (array!31332 (arr!15064 (Array (_ BitVec 32) (_ BitVec 64))) (size!15422 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31331)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31331 (_ BitVec 32)) Bool)

(assert (=> b!482709 (= res!287776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!482710 () Bool)

(declare-fun e!284077 () Bool)

(declare-fun arrayContainsKey!0 (array!31331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!482710 (= e!284077 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!482711 () Bool)

(declare-fun lt!218839 () (_ BitVec 32))

(assert (=> b!482711 (= e!284076 (not (or (not (= (size!15422 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))) (bvsgt #b00000000000000000000000000000000 (size!15422 _keys!1874)) (and (bvsge lt!218839 #b00000000000000000000000000000000) (bvsle lt!218839 (size!15422 _keys!1874))))))))

(declare-fun arrayScanForKey!0 (array!31331 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!482711 (= lt!218839 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(assert (=> b!482711 e!284077))

(declare-fun c!57942 () Bool)

(assert (=> b!482711 (= c!57942 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14126 0))(
  ( (Unit!14127) )
))
(declare-fun lt!218840 () Unit!14126)

(declare-datatypes ((V!19541 0))(
  ( (V!19542 (val!6974 Int)) )
))
(declare-fun minValue!1458 () V!19541)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19541)

(declare-datatypes ((ValueCell!6565 0))(
  ( (ValueCellFull!6565 (v!9264 V!19541)) (EmptyCell!6565) )
))
(declare-datatypes ((array!31333 0))(
  ( (array!31334 (arr!15065 (Array (_ BitVec 32) ValueCell!6565)) (size!15423 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31333)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!151 (array!31331 array!31333 (_ BitVec 32) (_ BitVec 32) V!19541 V!19541 (_ BitVec 64) Int) Unit!14126)

(assert (=> b!482711 (= lt!218840 (lemmaKeyInListMapIsInArray!151 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!482712 () Bool)

(assert (=> b!482712 (= e!284077 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!482713 () Bool)

(declare-fun e!284072 () Bool)

(declare-fun e!284075 () Bool)

(declare-fun mapRes!22492 () Bool)

(assert (=> b!482713 (= e!284072 (and e!284075 mapRes!22492))))

(declare-fun condMapEmpty!22492 () Bool)

(declare-fun mapDefault!22492 () ValueCell!6565)

