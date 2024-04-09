; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43626 () Bool)

(assert start!43626)

(declare-fun b_free!12353 () Bool)

(declare-fun b_next!12353 () Bool)

(assert (=> start!43626 (= b_free!12353 (not b_next!12353))))

(declare-fun tp!43347 () Bool)

(declare-fun b_and!21135 () Bool)

(assert (=> start!43626 (= tp!43347 b_and!21135)))

(declare-fun b!483049 () Bool)

(declare-fun res!287952 () Bool)

(declare-fun e!284272 () Bool)

(assert (=> b!483049 (=> res!287952 e!284272)))

(declare-datatypes ((SeekEntryResult!3564 0))(
  ( (MissingZero!3564 (index!16435 (_ BitVec 32))) (Found!3564 (index!16436 (_ BitVec 32))) (Intermediate!3564 (undefined!4376 Bool) (index!16437 (_ BitVec 32)) (x!45363 (_ BitVec 32))) (Undefined!3564) (MissingVacant!3564 (index!16438 (_ BitVec 32))) )
))
(declare-fun lt!218986 () SeekEntryResult!3564)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!483049 (= res!287952 (not (inRange!0 (index!16436 lt!218986) mask!2352)))))

(declare-fun b!483050 () Bool)

(declare-fun e!284273 () Bool)

(declare-datatypes ((array!31357 0))(
  ( (array!31358 (arr!15076 (Array (_ BitVec 32) (_ BitVec 64))) (size!15434 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31357)

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!483050 (= e!284273 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!483051 () Bool)

(declare-fun res!287956 () Bool)

(declare-fun e!284278 () Bool)

(assert (=> b!483051 (=> (not res!287956) (not e!284278))))

(declare-datatypes ((List!9278 0))(
  ( (Nil!9275) (Cons!9274 (h!10130 (_ BitVec 64)) (t!15504 List!9278)) )
))
(declare-fun arrayNoDuplicates!0 (array!31357 (_ BitVec 32) List!9278) Bool)

(assert (=> b!483051 (= res!287956 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9275))))

(declare-fun b!483052 () Bool)

(assert (=> b!483052 (= e!284272 (and (bvsge (index!16436 lt!218986) #b00000000000000000000000000000000) (bvslt (index!16436 lt!218986) (size!15434 _keys!1874))))))

(declare-fun mapIsEmpty!22513 () Bool)

(declare-fun mapRes!22513 () Bool)

(assert (=> mapIsEmpty!22513 mapRes!22513))

(declare-fun b!483053 () Bool)

(declare-fun res!287954 () Bool)

(assert (=> b!483053 (=> (not res!287954) (not e!284278))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19557 0))(
  ( (V!19558 (val!6980 Int)) )
))
(declare-datatypes ((ValueCell!6571 0))(
  ( (ValueCellFull!6571 (v!9271 V!19557)) (EmptyCell!6571) )
))
(declare-datatypes ((array!31359 0))(
  ( (array!31360 (arr!15077 (Array (_ BitVec 32) ValueCell!6571)) (size!15435 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31359)

(assert (=> b!483053 (= res!287954 (and (= (size!15435 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15434 _keys!1874) (size!15435 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!483054 () Bool)

(declare-fun res!287953 () Bool)

(assert (=> b!483054 (=> (not res!287953) (not e!284278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31357 (_ BitVec 32)) Bool)

(assert (=> b!483054 (= res!287953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!483055 () Bool)

(declare-fun e!284274 () Bool)

(declare-fun e!284275 () Bool)

(assert (=> b!483055 (= e!284274 (and e!284275 mapRes!22513))))

(declare-fun condMapEmpty!22513 () Bool)

(declare-fun mapDefault!22513 () ValueCell!6571)

