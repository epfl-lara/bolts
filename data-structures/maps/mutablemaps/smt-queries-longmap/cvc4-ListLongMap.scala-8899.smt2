; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108074 () Bool)

(assert start!108074)

(declare-fun b!1275938 () Bool)

(declare-fun e!728563 () Bool)

(declare-fun tp_is_empty!33311 () Bool)

(assert (=> b!1275938 (= e!728563 tp_is_empty!33311)))

(declare-fun res!848085 () Bool)

(declare-fun e!728561 () Bool)

(assert (=> start!108074 (=> (not res!848085) (not e!728561))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108074 (= res!848085 (validMask!0 mask!1805))))

(assert (=> start!108074 e!728561))

(assert (=> start!108074 true))

(declare-datatypes ((V!49517 0))(
  ( (V!49518 (val!16730 Int)) )
))
(declare-datatypes ((ValueCell!15757 0))(
  ( (ValueCellFull!15757 (v!19325 V!49517)) (EmptyCell!15757) )
))
(declare-datatypes ((array!83673 0))(
  ( (array!83674 (arr!40344 (Array (_ BitVec 32) ValueCell!15757)) (size!40895 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83673)

(declare-fun e!728562 () Bool)

(declare-fun array_inv!30621 (array!83673) Bool)

(assert (=> start!108074 (and (array_inv!30621 _values!1187) e!728562)))

(declare-datatypes ((array!83675 0))(
  ( (array!83676 (arr!40345 (Array (_ BitVec 32) (_ BitVec 64))) (size!40896 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83675)

(declare-fun array_inv!30622 (array!83675) Bool)

(assert (=> start!108074 (array_inv!30622 _keys!1427)))

(declare-fun b!1275939 () Bool)

(assert (=> b!1275939 (= e!728561 false)))

(declare-fun lt!575370 () Bool)

(declare-datatypes ((List!28793 0))(
  ( (Nil!28790) (Cons!28789 (h!29998 (_ BitVec 64)) (t!42336 List!28793)) )
))
(declare-fun arrayNoDuplicates!0 (array!83675 (_ BitVec 32) List!28793) Bool)

(assert (=> b!1275939 (= lt!575370 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28790))))

(declare-fun b!1275940 () Bool)

(declare-fun e!728564 () Bool)

(assert (=> b!1275940 (= e!728564 tp_is_empty!33311)))

(declare-fun b!1275941 () Bool)

(declare-fun mapRes!51494 () Bool)

(assert (=> b!1275941 (= e!728562 (and e!728564 mapRes!51494))))

(declare-fun condMapEmpty!51494 () Bool)

(declare-fun mapDefault!51494 () ValueCell!15757)

