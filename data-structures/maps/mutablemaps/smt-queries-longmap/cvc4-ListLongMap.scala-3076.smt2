; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43340 () Bool)

(assert start!43340)

(declare-fun b_free!12179 () Bool)

(declare-fun b_next!12179 () Bool)

(assert (=> start!43340 (= b_free!12179 (not b_next!12179))))

(declare-fun tp!42810 () Bool)

(declare-fun b_and!20951 () Bool)

(assert (=> start!43340 (= tp!42810 b_and!20951)))

(declare-fun b!479848 () Bool)

(declare-fun res!286269 () Bool)

(declare-fun e!282357 () Bool)

(assert (=> b!479848 (=> (not res!286269) (not e!282357))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!479848 (= res!286269 (validKeyInArray!0 k!1332))))

(declare-fun b!479849 () Bool)

(declare-fun e!282360 () Bool)

(assert (=> b!479849 (= e!282357 (not e!282360))))

(declare-fun res!286274 () Bool)

(assert (=> b!479849 (=> res!286274 e!282360)))

(declare-datatypes ((array!31019 0))(
  ( (array!31020 (arr!14912 (Array (_ BitVec 32) (_ BitVec 64))) (size!15270 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31019)

(assert (=> b!479849 (= res!286274 (or (bvsge #b00000000000000000000000000000000 (size!15270 _keys!1874)) (bvsge (size!15270 _keys!1874) #b01111111111111111111111111111111)))))

(declare-fun e!282355 () Bool)

(assert (=> b!479849 e!282355))

(declare-fun c!57649 () Bool)

(assert (=> b!479849 (= c!57649 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19325 0))(
  ( (V!19326 (val!6893 Int)) )
))
(declare-fun minValue!1458 () V!19325)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19325)

(declare-datatypes ((ValueCell!6484 0))(
  ( (ValueCellFull!6484 (v!9179 V!19325)) (EmptyCell!6484) )
))
(declare-datatypes ((array!31021 0))(
  ( (array!31022 (arr!14913 (Array (_ BitVec 32) ValueCell!6484)) (size!15271 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31021)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((Unit!14046 0))(
  ( (Unit!14047) )
))
(declare-fun lt!217973 () Unit!14046)

(declare-fun lemmaKeyInListMapIsInArray!115 (array!31019 array!31021 (_ BitVec 32) (_ BitVec 32) V!19325 V!19325 (_ BitVec 64) Int) Unit!14046)

(assert (=> b!479849 (= lt!217973 (lemmaKeyInListMapIsInArray!115 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!479850 () Bool)

(declare-fun res!286270 () Bool)

(assert (=> b!479850 (=> (not res!286270) (not e!282357))))

(declare-datatypes ((List!9157 0))(
  ( (Nil!9154) (Cons!9153 (h!10009 (_ BitVec 64)) (t!15373 List!9157)) )
))
(declare-fun arrayNoDuplicates!0 (array!31019 (_ BitVec 32) List!9157) Bool)

(assert (=> b!479850 (= res!286270 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9154))))

(declare-fun res!286273 () Bool)

(assert (=> start!43340 (=> (not res!286273) (not e!282357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43340 (= res!286273 (validMask!0 mask!2352))))

(assert (=> start!43340 e!282357))

(assert (=> start!43340 true))

(declare-fun tp_is_empty!13691 () Bool)

(assert (=> start!43340 tp_is_empty!13691))

(declare-fun e!282356 () Bool)

(declare-fun array_inv!10744 (array!31021) Bool)

(assert (=> start!43340 (and (array_inv!10744 _values!1516) e!282356)))

(assert (=> start!43340 tp!42810))

(declare-fun array_inv!10745 (array!31019) Bool)

(assert (=> start!43340 (array_inv!10745 _keys!1874)))

(declare-fun b!479851 () Bool)

(declare-fun res!286272 () Bool)

(assert (=> b!479851 (=> (not res!286272) (not e!282357))))

(assert (=> b!479851 (= res!286272 (and (= (size!15271 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15270 _keys!1874) (size!15271 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479852 () Bool)

(declare-fun e!282361 () Bool)

(declare-fun mapRes!22237 () Bool)

(assert (=> b!479852 (= e!282356 (and e!282361 mapRes!22237))))

(declare-fun condMapEmpty!22237 () Bool)

(declare-fun mapDefault!22237 () ValueCell!6484)

