; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108050 () Bool)

(assert start!108050)

(declare-fun b!1275722 () Bool)

(declare-fun res!847977 () Bool)

(declare-fun e!728384 () Bool)

(assert (=> b!1275722 (=> (not res!847977) (not e!728384))))

(declare-datatypes ((array!83625 0))(
  ( (array!83626 (arr!40320 (Array (_ BitVec 32) (_ BitVec 64))) (size!40871 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83625)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83625 (_ BitVec 32)) Bool)

(assert (=> b!1275722 (= res!847977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275723 () Bool)

(declare-fun e!728380 () Bool)

(declare-fun tp_is_empty!33287 () Bool)

(assert (=> b!1275723 (= e!728380 tp_is_empty!33287)))

(declare-fun b!1275725 () Bool)

(assert (=> b!1275725 (= e!728384 false)))

(declare-fun lt!575334 () Bool)

(declare-datatypes ((List!28786 0))(
  ( (Nil!28783) (Cons!28782 (h!29991 (_ BitVec 64)) (t!42329 List!28786)) )
))
(declare-fun arrayNoDuplicates!0 (array!83625 (_ BitVec 32) List!28786) Bool)

(assert (=> b!1275725 (= lt!575334 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28783))))

(declare-fun mapNonEmpty!51458 () Bool)

(declare-fun mapRes!51458 () Bool)

(declare-fun tp!98217 () Bool)

(assert (=> mapNonEmpty!51458 (= mapRes!51458 (and tp!98217 e!728380))))

(declare-datatypes ((V!49485 0))(
  ( (V!49486 (val!16718 Int)) )
))
(declare-datatypes ((ValueCell!15745 0))(
  ( (ValueCellFull!15745 (v!19313 V!49485)) (EmptyCell!15745) )
))
(declare-fun mapRest!51458 () (Array (_ BitVec 32) ValueCell!15745))

(declare-fun mapValue!51458 () ValueCell!15745)

(declare-fun mapKey!51458 () (_ BitVec 32))

(declare-datatypes ((array!83627 0))(
  ( (array!83628 (arr!40321 (Array (_ BitVec 32) ValueCell!15745)) (size!40872 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83627)

(assert (=> mapNonEmpty!51458 (= (arr!40321 _values!1187) (store mapRest!51458 mapKey!51458 mapValue!51458))))

(declare-fun b!1275726 () Bool)

(declare-fun e!728382 () Bool)

(assert (=> b!1275726 (= e!728382 tp_is_empty!33287)))

(declare-fun mapIsEmpty!51458 () Bool)

(assert (=> mapIsEmpty!51458 mapRes!51458))

(declare-fun b!1275727 () Bool)

(declare-fun e!728383 () Bool)

(assert (=> b!1275727 (= e!728383 (and e!728382 mapRes!51458))))

(declare-fun condMapEmpty!51458 () Bool)

(declare-fun mapDefault!51458 () ValueCell!15745)

