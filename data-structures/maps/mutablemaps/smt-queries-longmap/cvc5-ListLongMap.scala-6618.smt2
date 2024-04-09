; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83686 () Bool)

(assert start!83686)

(declare-fun mapNonEmpty!35747 () Bool)

(declare-fun mapRes!35747 () Bool)

(declare-fun tp!68000 () Bool)

(declare-fun e!550737 () Bool)

(assert (=> mapNonEmpty!35747 (= mapRes!35747 (and tp!68000 e!550737))))

(declare-datatypes ((V!34961 0))(
  ( (V!34962 (val!11292 Int)) )
))
(declare-datatypes ((ValueCell!10760 0))(
  ( (ValueCellFull!10760 (v!13853 V!34961)) (EmptyCell!10760) )
))
(declare-fun mapValue!35747 () ValueCell!10760)

(declare-datatypes ((array!60981 0))(
  ( (array!60982 (arr!29346 (Array (_ BitVec 32) ValueCell!10760)) (size!29826 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60981)

(declare-fun mapKey!35747 () (_ BitVec 32))

(declare-fun mapRest!35747 () (Array (_ BitVec 32) ValueCell!10760))

(assert (=> mapNonEmpty!35747 (= (arr!29346 _values!1278) (store mapRest!35747 mapKey!35747 mapValue!35747))))

(declare-fun b!976986 () Bool)

(declare-fun tp_is_empty!22483 () Bool)

(assert (=> b!976986 (= e!550737 tp_is_empty!22483)))

(declare-fun res!654023 () Bool)

(declare-fun e!550736 () Bool)

(assert (=> start!83686 (=> (not res!654023) (not e!550736))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83686 (= res!654023 (validMask!0 mask!1948))))

(assert (=> start!83686 e!550736))

(assert (=> start!83686 true))

(declare-fun e!550739 () Bool)

(declare-fun array_inv!22591 (array!60981) Bool)

(assert (=> start!83686 (and (array_inv!22591 _values!1278) e!550739)))

(declare-datatypes ((array!60983 0))(
  ( (array!60984 (arr!29347 (Array (_ BitVec 32) (_ BitVec 64))) (size!29827 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60983)

(declare-fun array_inv!22592 (array!60983) Bool)

(assert (=> start!83686 (array_inv!22592 _keys!1544)))

(declare-fun b!976987 () Bool)

(declare-fun res!654025 () Bool)

(assert (=> b!976987 (=> (not res!654025) (not e!550736))))

(assert (=> b!976987 (= res!654025 (and (bvsle #b00000000000000000000000000000000 (size!29827 _keys!1544)) (bvslt (size!29827 _keys!1544) #b01111111111111111111111111111111)))))

(declare-fun b!976988 () Bool)

(declare-fun res!654024 () Bool)

(assert (=> b!976988 (=> (not res!654024) (not e!550736))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!976988 (= res!654024 (and (= (size!29826 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29827 _keys!1544) (size!29826 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!976989 () Bool)

(declare-datatypes ((List!20488 0))(
  ( (Nil!20485) (Cons!20484 (h!21646 (_ BitVec 64)) (t!29011 List!20488)) )
))
(declare-fun noDuplicate!1381 (List!20488) Bool)

(assert (=> b!976989 (= e!550736 (not (noDuplicate!1381 Nil!20485)))))

(declare-fun b!976990 () Bool)

(declare-fun e!550740 () Bool)

(assert (=> b!976990 (= e!550739 (and e!550740 mapRes!35747))))

(declare-fun condMapEmpty!35747 () Bool)

(declare-fun mapDefault!35747 () ValueCell!10760)

