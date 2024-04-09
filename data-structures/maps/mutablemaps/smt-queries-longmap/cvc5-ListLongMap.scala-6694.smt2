; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84164 () Bool)

(assert start!84164)

(declare-fun b!983572 () Bool)

(declare-fun res!658252 () Bool)

(declare-fun e!554543 () Bool)

(assert (=> b!983572 (=> (not res!658252) (not e!554543))))

(declare-datatypes ((array!61849 0))(
  ( (array!61850 (arr!29778 (Array (_ BitVec 32) (_ BitVec 64))) (size!30258 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61849)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61849 (_ BitVec 32)) Bool)

(assert (=> b!983572 (= res!658252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!658256 () Bool)

(assert (=> start!84164 (=> (not res!658256) (not e!554543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84164 (= res!658256 (validMask!0 mask!1948))))

(assert (=> start!84164 e!554543))

(assert (=> start!84164 true))

(declare-datatypes ((V!35569 0))(
  ( (V!35570 (val!11520 Int)) )
))
(declare-datatypes ((ValueCell!10988 0))(
  ( (ValueCellFull!10988 (v!14082 V!35569)) (EmptyCell!10988) )
))
(declare-datatypes ((array!61851 0))(
  ( (array!61852 (arr!29779 (Array (_ BitVec 32) ValueCell!10988)) (size!30259 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61851)

(declare-fun e!554542 () Bool)

(declare-fun array_inv!22891 (array!61851) Bool)

(assert (=> start!84164 (and (array_inv!22891 _values!1278) e!554542)))

(declare-fun array_inv!22892 (array!61849) Bool)

(assert (=> start!84164 (array_inv!22892 _keys!1544)))

(declare-fun b!983573 () Bool)

(declare-fun e!554540 () Bool)

(declare-fun mapRes!36437 () Bool)

(assert (=> b!983573 (= e!554542 (and e!554540 mapRes!36437))))

(declare-fun condMapEmpty!36437 () Bool)

(declare-fun mapDefault!36437 () ValueCell!10988)

