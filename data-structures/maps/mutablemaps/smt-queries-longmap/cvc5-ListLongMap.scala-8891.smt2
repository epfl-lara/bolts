; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108000 () Bool)

(assert start!108000)

(declare-fun b!1275376 () Bool)

(declare-fun res!847784 () Bool)

(declare-fun e!728114 () Bool)

(assert (=> b!1275376 (=> (not res!847784) (not e!728114))))

(declare-datatypes ((array!83571 0))(
  ( (array!83572 (arr!40295 (Array (_ BitVec 32) (_ BitVec 64))) (size!40846 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83571)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83571 (_ BitVec 32)) Bool)

(assert (=> b!1275376 (= res!847784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275377 () Bool)

(declare-fun res!847785 () Bool)

(assert (=> b!1275377 (=> (not res!847785) (not e!728114))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((V!49449 0))(
  ( (V!49450 (val!16704 Int)) )
))
(declare-datatypes ((ValueCell!15731 0))(
  ( (ValueCellFull!15731 (v!19298 V!49449)) (EmptyCell!15731) )
))
(declare-datatypes ((array!83573 0))(
  ( (array!83574 (arr!40296 (Array (_ BitVec 32) ValueCell!15731)) (size!40847 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83573)

(assert (=> b!1275377 (= res!847785 (and (= (size!40847 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40846 _keys!1427) (size!40847 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275378 () Bool)

(declare-fun e!728115 () Bool)

(declare-fun tp_is_empty!33259 () Bool)

(assert (=> b!1275378 (= e!728115 tp_is_empty!33259)))

(declare-fun mapIsEmpty!51410 () Bool)

(declare-fun mapRes!51410 () Bool)

(assert (=> mapIsEmpty!51410 mapRes!51410))

(declare-fun b!1275379 () Bool)

(declare-datatypes ((List!28776 0))(
  ( (Nil!28773) (Cons!28772 (h!29981 (_ BitVec 64)) (t!42319 List!28776)) )
))
(declare-fun noDuplicate!2078 (List!28776) Bool)

(assert (=> b!1275379 (= e!728114 (not (noDuplicate!2078 Nil!28773)))))

(declare-fun res!847786 () Bool)

(assert (=> start!108000 (=> (not res!847786) (not e!728114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108000 (= res!847786 (validMask!0 mask!1805))))

(assert (=> start!108000 e!728114))

(assert (=> start!108000 true))

(declare-fun e!728113 () Bool)

(declare-fun array_inv!30579 (array!83573) Bool)

(assert (=> start!108000 (and (array_inv!30579 _values!1187) e!728113)))

(declare-fun array_inv!30580 (array!83571) Bool)

(assert (=> start!108000 (array_inv!30580 _keys!1427)))

(declare-fun b!1275380 () Bool)

(declare-fun res!847783 () Bool)

(assert (=> b!1275380 (=> (not res!847783) (not e!728114))))

(assert (=> b!1275380 (= res!847783 (and (bvsle #b00000000000000000000000000000000 (size!40846 _keys!1427)) (bvslt (size!40846 _keys!1427) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!51410 () Bool)

(declare-fun tp!98169 () Bool)

(assert (=> mapNonEmpty!51410 (= mapRes!51410 (and tp!98169 e!728115))))

(declare-fun mapKey!51410 () (_ BitVec 32))

(declare-fun mapValue!51410 () ValueCell!15731)

(declare-fun mapRest!51410 () (Array (_ BitVec 32) ValueCell!15731))

(assert (=> mapNonEmpty!51410 (= (arr!40296 _values!1187) (store mapRest!51410 mapKey!51410 mapValue!51410))))

(declare-fun b!1275381 () Bool)

(declare-fun e!728112 () Bool)

(assert (=> b!1275381 (= e!728112 tp_is_empty!33259)))

(declare-fun b!1275382 () Bool)

(assert (=> b!1275382 (= e!728113 (and e!728112 mapRes!51410))))

(declare-fun condMapEmpty!51410 () Bool)

(declare-fun mapDefault!51410 () ValueCell!15731)

