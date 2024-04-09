; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84360 () Bool)

(assert start!84360)

(declare-fun b!986338 () Bool)

(declare-fun e!556175 () Bool)

(declare-fun tp_is_empty!23135 () Bool)

(assert (=> b!986338 (= e!556175 tp_is_empty!23135)))

(declare-fun mapIsEmpty!36731 () Bool)

(declare-fun mapRes!36731 () Bool)

(assert (=> mapIsEmpty!36731 mapRes!36731))

(declare-fun b!986339 () Bool)

(declare-fun res!660030 () Bool)

(declare-fun e!556174 () Bool)

(assert (=> b!986339 (=> (not res!660030) (not e!556174))))

(declare-datatypes ((array!62221 0))(
  ( (array!62222 (arr!29964 (Array (_ BitVec 32) (_ BitVec 64))) (size!30444 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62221)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62221 (_ BitVec 32)) Bool)

(assert (=> b!986339 (= res!660030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986340 () Bool)

(declare-fun e!556171 () Bool)

(assert (=> b!986340 (= e!556171 (and e!556175 mapRes!36731))))

(declare-fun condMapEmpty!36731 () Bool)

(declare-datatypes ((V!35829 0))(
  ( (V!35830 (val!11618 Int)) )
))
(declare-datatypes ((ValueCell!11086 0))(
  ( (ValueCellFull!11086 (v!14180 V!35829)) (EmptyCell!11086) )
))
(declare-datatypes ((array!62223 0))(
  ( (array!62224 (arr!29965 (Array (_ BitVec 32) ValueCell!11086)) (size!30445 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62223)

(declare-fun mapDefault!36731 () ValueCell!11086)

