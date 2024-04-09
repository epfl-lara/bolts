; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104596 () Bool)

(assert start!104596)

(declare-fun res!832222 () Bool)

(declare-fun e!707411 () Bool)

(assert (=> start!104596 (=> (not res!832222) (not e!707411))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104596 (= res!832222 (validMask!0 mask!1466))))

(assert (=> start!104596 e!707411))

(assert (=> start!104596 true))

(declare-datatypes ((array!80313 0))(
  ( (array!80314 (arr!38724 (Array (_ BitVec 32) (_ BitVec 64))) (size!39261 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80313)

(declare-fun array_inv!29495 (array!80313) Bool)

(assert (=> start!104596 (array_inv!29495 _keys!1118)))

(declare-datatypes ((V!47123 0))(
  ( (V!47124 (val!15722 Int)) )
))
(declare-datatypes ((ValueCell!14896 0))(
  ( (ValueCellFull!14896 (v!18417 V!47123)) (EmptyCell!14896) )
))
(declare-datatypes ((array!80315 0))(
  ( (array!80316 (arr!38725 (Array (_ BitVec 32) ValueCell!14896)) (size!39262 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80315)

(declare-fun e!707410 () Bool)

(declare-fun array_inv!29496 (array!80315) Bool)

(assert (=> start!104596 (and (array_inv!29496 _values!914) e!707410)))

(declare-fun b!1247037 () Bool)

(assert (=> b!1247037 (= e!707411 (and (bvsle #b00000000000000000000000000000000 (size!39261 _keys!1118)) (bvsge (size!39261 _keys!1118) #b01111111111111111111111111111111)))))

(declare-fun b!1247038 () Bool)

(declare-fun e!707409 () Bool)

(declare-fun mapRes!48724 () Bool)

(assert (=> b!1247038 (= e!707410 (and e!707409 mapRes!48724))))

(declare-fun condMapEmpty!48724 () Bool)

(declare-fun mapDefault!48724 () ValueCell!14896)

