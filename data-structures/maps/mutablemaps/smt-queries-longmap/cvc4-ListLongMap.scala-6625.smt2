; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83754 () Bool)

(assert start!83754)

(declare-fun mapNonEmpty!35822 () Bool)

(declare-fun mapRes!35822 () Bool)

(declare-fun tp!68075 () Bool)

(declare-fun e!551144 () Bool)

(assert (=> mapNonEmpty!35822 (= mapRes!35822 (and tp!68075 e!551144))))

(declare-fun mapKey!35822 () (_ BitVec 32))

(declare-datatypes ((V!35021 0))(
  ( (V!35022 (val!11315 Int)) )
))
(declare-datatypes ((ValueCell!10783 0))(
  ( (ValueCellFull!10783 (v!13877 V!35021)) (EmptyCell!10783) )
))
(declare-fun mapValue!35822 () ValueCell!10783)

(declare-datatypes ((array!61075 0))(
  ( (array!61076 (arr!29391 (Array (_ BitVec 32) ValueCell!10783)) (size!29871 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61075)

(declare-fun mapRest!35822 () (Array (_ BitVec 32) ValueCell!10783))

(assert (=> mapNonEmpty!35822 (= (arr!29391 _values!1278) (store mapRest!35822 mapKey!35822 mapValue!35822))))

(declare-fun mapIsEmpty!35822 () Bool)

(assert (=> mapIsEmpty!35822 mapRes!35822))

(declare-fun b!977495 () Bool)

(declare-fun e!551143 () Bool)

(assert (=> b!977495 (= e!551143 false)))

(declare-fun lt!433447 () Bool)

(declare-datatypes ((array!61077 0))(
  ( (array!61078 (arr!29392 (Array (_ BitVec 32) (_ BitVec 64))) (size!29872 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61077)

(declare-datatypes ((List!20508 0))(
  ( (Nil!20505) (Cons!20504 (h!21666 (_ BitVec 64)) (t!29031 List!20508)) )
))
(declare-fun arrayNoDuplicates!0 (array!61077 (_ BitVec 32) List!20508) Bool)

(assert (=> b!977495 (= lt!433447 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20505))))

(declare-fun b!977496 () Bool)

(declare-fun res!654295 () Bool)

(assert (=> b!977496 (=> (not res!654295) (not e!551143))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61077 (_ BitVec 32)) Bool)

(assert (=> b!977496 (= res!654295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977497 () Bool)

(declare-fun res!654297 () Bool)

(assert (=> b!977497 (=> (not res!654297) (not e!551143))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977497 (= res!654297 (and (= (size!29871 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29872 _keys!1544) (size!29871 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!654296 () Bool)

(assert (=> start!83754 (=> (not res!654296) (not e!551143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83754 (= res!654296 (validMask!0 mask!1948))))

(assert (=> start!83754 e!551143))

(assert (=> start!83754 true))

(declare-fun e!551141 () Bool)

(declare-fun array_inv!22621 (array!61075) Bool)

(assert (=> start!83754 (and (array_inv!22621 _values!1278) e!551141)))

(declare-fun array_inv!22622 (array!61077) Bool)

(assert (=> start!83754 (array_inv!22622 _keys!1544)))

(declare-fun b!977494 () Bool)

(declare-fun tp_is_empty!22529 () Bool)

(assert (=> b!977494 (= e!551144 tp_is_empty!22529)))

(declare-fun b!977498 () Bool)

(declare-fun e!551142 () Bool)

(assert (=> b!977498 (= e!551141 (and e!551142 mapRes!35822))))

(declare-fun condMapEmpty!35822 () Bool)

(declare-fun mapDefault!35822 () ValueCell!10783)

