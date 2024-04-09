; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108126 () Bool)

(assert start!108126)

(declare-fun b_free!27803 () Bool)

(declare-fun b_next!27803 () Bool)

(assert (=> start!108126 (= b_free!27803 (not b_next!27803))))

(declare-fun tp!98363 () Bool)

(declare-fun b_and!45869 () Bool)

(assert (=> start!108126 (= tp!98363 b_and!45869)))

(declare-fun mapIsEmpty!51560 () Bool)

(declare-fun mapRes!51560 () Bool)

(assert (=> mapIsEmpty!51560 mapRes!51560))

(declare-fun res!848343 () Bool)

(declare-fun e!728905 () Bool)

(assert (=> start!108126 (=> (not res!848343) (not e!728905))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108126 (= res!848343 (validMask!0 mask!1805))))

(assert (=> start!108126 e!728905))

(assert (=> start!108126 true))

(assert (=> start!108126 tp!98363))

(declare-fun tp_is_empty!33353 () Bool)

(assert (=> start!108126 tp_is_empty!33353))

(declare-datatypes ((V!49573 0))(
  ( (V!49574 (val!16751 Int)) )
))
(declare-datatypes ((ValueCell!15778 0))(
  ( (ValueCellFull!15778 (v!19346 V!49573)) (EmptyCell!15778) )
))
(declare-datatypes ((array!83751 0))(
  ( (array!83752 (arr!40382 (Array (_ BitVec 32) ValueCell!15778)) (size!40933 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83751)

(declare-fun e!728903 () Bool)

(declare-fun array_inv!30649 (array!83751) Bool)

(assert (=> start!108126 (and (array_inv!30649 _values!1187) e!728903)))

(declare-datatypes ((array!83753 0))(
  ( (array!83754 (arr!40383 (Array (_ BitVec 32) (_ BitVec 64))) (size!40934 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83753)

(declare-fun array_inv!30650 (array!83753) Bool)

(assert (=> start!108126 (array_inv!30650 _keys!1427)))

(declare-fun b!1276404 () Bool)

(declare-fun res!848341 () Bool)

(assert (=> b!1276404 (=> (not res!848341) (not e!728905))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83753 (_ BitVec 32)) Bool)

(assert (=> b!1276404 (= res!848341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276405 () Bool)

(declare-fun res!848340 () Bool)

(assert (=> b!1276405 (=> (not res!848340) (not e!728905))))

(declare-datatypes ((List!28815 0))(
  ( (Nil!28812) (Cons!28811 (h!30020 (_ BitVec 64)) (t!42358 List!28815)) )
))
(declare-fun arrayNoDuplicates!0 (array!83753 (_ BitVec 32) List!28815) Bool)

(assert (=> b!1276405 (= res!848340 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28812))))

(declare-fun b!1276406 () Bool)

(declare-fun e!728906 () Bool)

(assert (=> b!1276406 (= e!728903 (and e!728906 mapRes!51560))))

(declare-fun condMapEmpty!51560 () Bool)

(declare-fun mapDefault!51560 () ValueCell!15778)

