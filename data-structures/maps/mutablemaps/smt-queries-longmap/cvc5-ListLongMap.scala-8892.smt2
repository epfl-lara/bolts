; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108016 () Bool)

(assert start!108016)

(declare-fun b!1275469 () Bool)

(declare-fun e!728181 () Bool)

(declare-fun tp_is_empty!33265 () Bool)

(assert (=> b!1275469 (= e!728181 tp_is_empty!33265)))

(declare-fun res!847836 () Bool)

(declare-fun e!728182 () Bool)

(assert (=> start!108016 (=> (not res!847836) (not e!728182))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108016 (= res!847836 (validMask!0 mask!1805))))

(assert (=> start!108016 e!728182))

(assert (=> start!108016 true))

(declare-datatypes ((V!49457 0))(
  ( (V!49458 (val!16707 Int)) )
))
(declare-datatypes ((ValueCell!15734 0))(
  ( (ValueCellFull!15734 (v!19301 V!49457)) (EmptyCell!15734) )
))
(declare-datatypes ((array!83583 0))(
  ( (array!83584 (arr!40300 (Array (_ BitVec 32) ValueCell!15734)) (size!40851 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83583)

(declare-fun e!728179 () Bool)

(declare-fun array_inv!30583 (array!83583) Bool)

(assert (=> start!108016 (and (array_inv!30583 _values!1187) e!728179)))

(declare-datatypes ((array!83585 0))(
  ( (array!83586 (arr!40301 (Array (_ BitVec 32) (_ BitVec 64))) (size!40852 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83585)

(declare-fun array_inv!30584 (array!83585) Bool)

(assert (=> start!108016 (array_inv!30584 _keys!1427)))

(declare-fun b!1275470 () Bool)

(declare-fun e!728180 () Bool)

(declare-datatypes ((List!28779 0))(
  ( (Nil!28776) (Cons!28775 (h!29984 (_ BitVec 64)) (t!42322 List!28779)) )
))
(declare-fun contains!7700 (List!28779 (_ BitVec 64)) Bool)

(assert (=> b!1275470 (= e!728180 (contains!7700 Nil!28776 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1275471 () Bool)

(declare-fun res!847839 () Bool)

(assert (=> b!1275471 (=> (not res!847839) (not e!728182))))

(assert (=> b!1275471 (= res!847839 (and (bvsle #b00000000000000000000000000000000 (size!40852 _keys!1427)) (bvslt (size!40852 _keys!1427) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!51422 () Bool)

(declare-fun mapRes!51422 () Bool)

(declare-fun tp!98181 () Bool)

(declare-fun e!728183 () Bool)

(assert (=> mapNonEmpty!51422 (= mapRes!51422 (and tp!98181 e!728183))))

(declare-fun mapRest!51422 () (Array (_ BitVec 32) ValueCell!15734))

(declare-fun mapKey!51422 () (_ BitVec 32))

(declare-fun mapValue!51422 () ValueCell!15734)

(assert (=> mapNonEmpty!51422 (= (arr!40300 _values!1187) (store mapRest!51422 mapKey!51422 mapValue!51422))))

(declare-fun b!1275472 () Bool)

(assert (=> b!1275472 (= e!728182 e!728180)))

(declare-fun res!847837 () Bool)

(assert (=> b!1275472 (=> res!847837 e!728180)))

(assert (=> b!1275472 (= res!847837 (contains!7700 Nil!28776 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1275473 () Bool)

(assert (=> b!1275473 (= e!728183 tp_is_empty!33265)))

(declare-fun b!1275474 () Bool)

(declare-fun res!847838 () Bool)

(assert (=> b!1275474 (=> (not res!847838) (not e!728182))))

(declare-fun noDuplicate!2081 (List!28779) Bool)

(assert (=> b!1275474 (= res!847838 (noDuplicate!2081 Nil!28776))))

(declare-fun b!1275475 () Bool)

(declare-fun res!847840 () Bool)

(assert (=> b!1275475 (=> (not res!847840) (not e!728182))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275475 (= res!847840 (and (= (size!40851 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40852 _keys!1427) (size!40851 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51422 () Bool)

(assert (=> mapIsEmpty!51422 mapRes!51422))

(declare-fun b!1275476 () Bool)

(assert (=> b!1275476 (= e!728179 (and e!728181 mapRes!51422))))

(declare-fun condMapEmpty!51422 () Bool)

(declare-fun mapDefault!51422 () ValueCell!15734)

