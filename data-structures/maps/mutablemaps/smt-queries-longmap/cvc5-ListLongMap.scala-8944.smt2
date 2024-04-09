; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108426 () Bool)

(assert start!108426)

(declare-fun b_free!27937 () Bool)

(declare-fun b_next!27937 () Bool)

(assert (=> start!108426 (= b_free!27937 (not b_next!27937))))

(declare-fun tp!98922 () Bool)

(declare-fun b_and!46007 () Bool)

(assert (=> start!108426 (= tp!98922 b_and!46007)))

(declare-fun b!1279150 () Bool)

(declare-fun res!849810 () Bool)

(declare-fun e!730867 () Bool)

(assert (=> b!1279150 (=> (not res!849810) (not e!730867))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49873 0))(
  ( (V!49874 (val!16863 Int)) )
))
(declare-datatypes ((ValueCell!15890 0))(
  ( (ValueCellFull!15890 (v!19461 V!49873)) (EmptyCell!15890) )
))
(declare-datatypes ((array!84189 0))(
  ( (array!84190 (arr!40594 (Array (_ BitVec 32) ValueCell!15890)) (size!41145 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84189)

(declare-datatypes ((array!84191 0))(
  ( (array!84192 (arr!40595 (Array (_ BitVec 32) (_ BitVec 64))) (size!41146 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84191)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279150 (= res!849810 (and (= (size!41145 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41146 _keys!1741) (size!41145 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279151 () Bool)

(declare-fun res!849812 () Bool)

(assert (=> b!1279151 (=> (not res!849812) (not e!730867))))

(declare-datatypes ((List!28933 0))(
  ( (Nil!28930) (Cons!28929 (h!30138 (_ BitVec 64)) (t!42480 List!28933)) )
))
(declare-fun arrayNoDuplicates!0 (array!84191 (_ BitVec 32) List!28933) Bool)

(assert (=> b!1279151 (= res!849812 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28930))))

(declare-fun mapNonEmpty!51917 () Bool)

(declare-fun mapRes!51917 () Bool)

(declare-fun tp!98921 () Bool)

(declare-fun e!730866 () Bool)

(assert (=> mapNonEmpty!51917 (= mapRes!51917 (and tp!98921 e!730866))))

(declare-fun mapRest!51917 () (Array (_ BitVec 32) ValueCell!15890))

(declare-fun mapKey!51917 () (_ BitVec 32))

(declare-fun mapValue!51917 () ValueCell!15890)

(assert (=> mapNonEmpty!51917 (= (arr!40594 _values!1445) (store mapRest!51917 mapKey!51917 mapValue!51917))))

(declare-fun b!1279152 () Bool)

(declare-fun e!730870 () Bool)

(declare-fun e!730868 () Bool)

(assert (=> b!1279152 (= e!730870 (and e!730868 mapRes!51917))))

(declare-fun condMapEmpty!51917 () Bool)

(declare-fun mapDefault!51917 () ValueCell!15890)

