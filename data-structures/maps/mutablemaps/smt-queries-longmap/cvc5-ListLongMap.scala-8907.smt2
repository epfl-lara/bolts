; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108128 () Bool)

(assert start!108128)

(declare-fun b_free!27805 () Bool)

(declare-fun b_next!27805 () Bool)

(assert (=> start!108128 (= b_free!27805 (not b_next!27805))))

(declare-fun tp!98370 () Bool)

(declare-fun b_and!45871 () Bool)

(assert (=> start!108128 (= tp!98370 b_and!45871)))

(declare-fun b!1276425 () Bool)

(declare-fun res!848353 () Bool)

(declare-fun e!728917 () Bool)

(assert (=> b!1276425 (=> (not res!848353) (not e!728917))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((array!83755 0))(
  ( (array!83756 (arr!40384 (Array (_ BitVec 32) (_ BitVec 64))) (size!40935 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83755)

(declare-datatypes ((V!49577 0))(
  ( (V!49578 (val!16752 Int)) )
))
(declare-datatypes ((ValueCell!15779 0))(
  ( (ValueCellFull!15779 (v!19347 V!49577)) (EmptyCell!15779) )
))
(declare-datatypes ((array!83757 0))(
  ( (array!83758 (arr!40385 (Array (_ BitVec 32) ValueCell!15779)) (size!40936 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83757)

(assert (=> b!1276425 (= res!848353 (and (= (size!40936 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40935 _keys!1427) (size!40936 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276426 () Bool)

(declare-fun e!728921 () Bool)

(declare-fun e!728920 () Bool)

(declare-fun mapRes!51563 () Bool)

(assert (=> b!1276426 (= e!728921 (and e!728920 mapRes!51563))))

(declare-fun condMapEmpty!51563 () Bool)

(declare-fun mapDefault!51563 () ValueCell!15779)

