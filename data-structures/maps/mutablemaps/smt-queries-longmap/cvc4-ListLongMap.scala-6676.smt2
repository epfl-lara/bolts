; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84060 () Bool)

(assert start!84060)

(declare-fun b_free!19787 () Bool)

(declare-fun b_next!19787 () Bool)

(assert (=> start!84060 (= b_free!19787 (not b_next!19787))))

(declare-fun tp!68885 () Bool)

(declare-fun b_and!31675 () Bool)

(assert (=> start!84060 (= tp!68885 b_and!31675)))

(declare-fun b!982164 () Bool)

(declare-fun res!657371 () Bool)

(declare-fun e!553682 () Bool)

(assert (=> b!982164 (=> (not res!657371) (not e!553682))))

(declare-datatypes ((array!61657 0))(
  ( (array!61658 (arr!29682 (Array (_ BitVec 32) (_ BitVec 64))) (size!30162 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61657)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61657 (_ BitVec 32)) Bool)

(assert (=> b!982164 (= res!657371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982165 () Bool)

(declare-fun res!657375 () Bool)

(assert (=> b!982165 (=> (not res!657375) (not e!553682))))

(declare-datatypes ((List!20702 0))(
  ( (Nil!20699) (Cons!20698 (h!21860 (_ BitVec 64)) (t!29447 List!20702)) )
))
(declare-fun arrayNoDuplicates!0 (array!61657 (_ BitVec 32) List!20702) Bool)

(assert (=> b!982165 (= res!657375 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20699))))

(declare-fun b!982166 () Bool)

(declare-fun res!657368 () Bool)

(assert (=> b!982166 (=> (not res!657368) (not e!553682))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982166 (= res!657368 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982167 () Bool)

(declare-fun res!657372 () Bool)

(assert (=> b!982167 (=> (not res!657372) (not e!553682))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982167 (= res!657372 (validKeyInArray!0 (select (arr!29682 _keys!1544) from!1932)))))

(declare-fun b!982168 () Bool)

(declare-fun res!657370 () Bool)

(assert (=> b!982168 (=> (not res!657370) (not e!553682))))

(declare-datatypes ((V!35429 0))(
  ( (V!35430 (val!11468 Int)) )
))
(declare-datatypes ((ValueCell!10936 0))(
  ( (ValueCellFull!10936 (v!14030 V!35429)) (EmptyCell!10936) )
))
(declare-datatypes ((array!61659 0))(
  ( (array!61660 (arr!29683 (Array (_ BitVec 32) ValueCell!10936)) (size!30163 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61659)

(assert (=> b!982168 (= res!657370 (and (= (size!30163 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30162 _keys!1544) (size!30163 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982169 () Bool)

(declare-fun res!657369 () Bool)

(assert (=> b!982169 (=> (not res!657369) (not e!553682))))

(assert (=> b!982169 (= res!657369 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30162 _keys!1544))))))

(declare-fun mapNonEmpty!36281 () Bool)

(declare-fun mapRes!36281 () Bool)

(declare-fun tp!68884 () Bool)

(declare-fun e!553677 () Bool)

(assert (=> mapNonEmpty!36281 (= mapRes!36281 (and tp!68884 e!553677))))

(declare-fun mapKey!36281 () (_ BitVec 32))

(declare-fun mapValue!36281 () ValueCell!10936)

(declare-fun mapRest!36281 () (Array (_ BitVec 32) ValueCell!10936))

(assert (=> mapNonEmpty!36281 (= (arr!29683 _values!1278) (store mapRest!36281 mapKey!36281 mapValue!36281))))

(declare-fun res!657373 () Bool)

(assert (=> start!84060 (=> (not res!657373) (not e!553682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84060 (= res!657373 (validMask!0 mask!1948))))

(assert (=> start!84060 e!553682))

(assert (=> start!84060 true))

(declare-fun tp_is_empty!22835 () Bool)

(assert (=> start!84060 tp_is_empty!22835))

(declare-fun e!553678 () Bool)

(declare-fun array_inv!22825 (array!61659) Bool)

(assert (=> start!84060 (and (array_inv!22825 _values!1278) e!553678)))

(assert (=> start!84060 tp!68885))

(declare-fun array_inv!22826 (array!61657) Bool)

(assert (=> start!84060 (array_inv!22826 _keys!1544)))

(declare-fun b!982170 () Bool)

(assert (=> b!982170 (= e!553677 tp_is_empty!22835)))

(declare-fun mapIsEmpty!36281 () Bool)

(assert (=> mapIsEmpty!36281 mapRes!36281))

(declare-fun b!982171 () Bool)

(declare-fun e!553681 () Bool)

(assert (=> b!982171 (= e!553678 (and e!553681 mapRes!36281))))

(declare-fun condMapEmpty!36281 () Bool)

(declare-fun mapDefault!36281 () ValueCell!10936)

