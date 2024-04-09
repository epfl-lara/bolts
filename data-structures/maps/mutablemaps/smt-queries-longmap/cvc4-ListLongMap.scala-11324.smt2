; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131884 () Bool)

(assert start!131884)

(declare-fun b!1543496 () Bool)

(declare-fun e!859069 () Bool)

(assert (=> b!1543496 (= e!859069 false)))

(declare-fun lt!665936 () Bool)

(declare-datatypes ((array!102859 0))(
  ( (array!102860 (arr!49627 (Array (_ BitVec 32) (_ BitVec 64))) (size!50178 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102859)

(declare-datatypes ((List!36073 0))(
  ( (Nil!36070) (Cons!36069 (h!37515 (_ BitVec 64)) (t!50774 List!36073)) )
))
(declare-fun arrayNoDuplicates!0 (array!102859 (_ BitVec 32) List!36073) Bool)

(assert (=> b!1543496 (= lt!665936 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36070))))

(declare-fun b!1543497 () Bool)

(declare-fun e!859072 () Bool)

(declare-fun e!859068 () Bool)

(declare-fun mapRes!58465 () Bool)

(assert (=> b!1543497 (= e!859072 (and e!859068 mapRes!58465))))

(declare-fun condMapEmpty!58465 () Bool)

(declare-datatypes ((V!58897 0))(
  ( (V!58898 (val!18998 Int)) )
))
(declare-datatypes ((ValueCell!18010 0))(
  ( (ValueCellFull!18010 (v!21796 V!58897)) (EmptyCell!18010) )
))
(declare-datatypes ((array!102861 0))(
  ( (array!102862 (arr!49628 (Array (_ BitVec 32) ValueCell!18010)) (size!50179 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102861)

(declare-fun mapDefault!58465 () ValueCell!18010)

