; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133494 () Bool)

(assert start!133494)

(declare-fun b!1560176 () Bool)

(declare-fun res!1066976 () Bool)

(declare-fun e!869368 () Bool)

(assert (=> b!1560176 (=> (not res!1066976) (not e!869368))))

(declare-datatypes ((array!103767 0))(
  ( (array!103768 (arr!50071 (Array (_ BitVec 32) (_ BitVec 64))) (size!50622 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103767)

(declare-datatypes ((List!36536 0))(
  ( (Nil!36533) (Cons!36532 (h!37979 (_ BitVec 64)) (t!51276 List!36536)) )
))
(declare-fun arrayNoDuplicates!0 (array!103767 (_ BitVec 32) List!36536) Bool)

(assert (=> b!1560176 (= res!1066976 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36533))))

(declare-fun mapIsEmpty!59193 () Bool)

(declare-fun mapRes!59193 () Bool)

(assert (=> mapIsEmpty!59193 mapRes!59193))

(declare-fun res!1066971 () Bool)

(assert (=> start!133494 (=> (not res!1066971) (not e!869368))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133494 (= res!1066971 (validMask!0 mask!947))))

(assert (=> start!133494 e!869368))

(assert (=> start!133494 true))

(declare-fun array_inv!38843 (array!103767) Bool)

(assert (=> start!133494 (array_inv!38843 _keys!637)))

(declare-datatypes ((V!59601 0))(
  ( (V!59602 (val!19356 Int)) )
))
(declare-datatypes ((ValueCell!18242 0))(
  ( (ValueCellFull!18242 (v!22105 V!59601)) (EmptyCell!18242) )
))
(declare-datatypes ((array!103769 0))(
  ( (array!103770 (arr!50072 (Array (_ BitVec 32) ValueCell!18242)) (size!50623 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103769)

(declare-fun e!869372 () Bool)

(declare-fun array_inv!38844 (array!103769) Bool)

(assert (=> start!133494 (and (array_inv!38844 _values!487) e!869372)))

(declare-fun b!1560177 () Bool)

(declare-fun e!869369 () Bool)

(assert (=> b!1560177 (= e!869372 (and e!869369 mapRes!59193))))

(declare-fun condMapEmpty!59193 () Bool)

(declare-fun mapDefault!59193 () ValueCell!18242)

