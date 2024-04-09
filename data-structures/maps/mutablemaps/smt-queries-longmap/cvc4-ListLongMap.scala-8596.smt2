; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104846 () Bool)

(assert start!104846)

(declare-fun b_free!26615 () Bool)

(declare-fun b_next!26615 () Bool)

(assert (=> start!104846 (= b_free!26615 (not b_next!26615))))

(declare-fun tp!93336 () Bool)

(declare-fun b_and!44393 () Bool)

(assert (=> start!104846 (= tp!93336 b_and!44393)))

(declare-fun b!1249249 () Bool)

(declare-fun e!709043 () Bool)

(declare-fun tp_is_empty!31517 () Bool)

(assert (=> b!1249249 (= e!709043 tp_is_empty!31517)))

(declare-fun b!1249250 () Bool)

(declare-fun res!833433 () Bool)

(declare-fun e!709044 () Bool)

(assert (=> b!1249250 (=> (not res!833433) (not e!709044))))

(declare-datatypes ((array!80693 0))(
  ( (array!80694 (arr!38909 (Array (_ BitVec 32) (_ BitVec 64))) (size!39446 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80693)

(declare-datatypes ((List!27788 0))(
  ( (Nil!27785) (Cons!27784 (h!28993 (_ BitVec 64)) (t!41266 List!27788)) )
))
(declare-fun arrayNoDuplicates!0 (array!80693 (_ BitVec 32) List!27788) Bool)

(assert (=> b!1249250 (= res!833433 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27785))))

(declare-fun mapNonEmpty!49036 () Bool)

(declare-fun mapRes!49036 () Bool)

(declare-fun tp!93335 () Bool)

(declare-fun e!709047 () Bool)

(assert (=> mapNonEmpty!49036 (= mapRes!49036 (and tp!93335 e!709047))))

(declare-datatypes ((V!47387 0))(
  ( (V!47388 (val!15821 Int)) )
))
(declare-datatypes ((ValueCell!14995 0))(
  ( (ValueCellFull!14995 (v!18517 V!47387)) (EmptyCell!14995) )
))
(declare-fun mapValue!49036 () ValueCell!14995)

(declare-fun mapRest!49036 () (Array (_ BitVec 32) ValueCell!14995))

(declare-fun mapKey!49036 () (_ BitVec 32))

(declare-datatypes ((array!80695 0))(
  ( (array!80696 (arr!38910 (Array (_ BitVec 32) ValueCell!14995)) (size!39447 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80695)

(assert (=> mapNonEmpty!49036 (= (arr!38910 _values!914) (store mapRest!49036 mapKey!49036 mapValue!49036))))

(declare-fun b!1249252 () Bool)

(declare-fun e!709045 () Bool)

(assert (=> b!1249252 (= e!709045 (and e!709043 mapRes!49036))))

(declare-fun condMapEmpty!49036 () Bool)

(declare-fun mapDefault!49036 () ValueCell!14995)

