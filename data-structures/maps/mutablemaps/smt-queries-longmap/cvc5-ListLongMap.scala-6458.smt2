; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82616 () Bool)

(assert start!82616)

(declare-fun b_free!18721 () Bool)

(declare-fun b_next!18721 () Bool)

(assert (=> start!82616 (= b_free!18721 (not b_next!18721))))

(declare-fun tp!65283 () Bool)

(declare-fun b_and!30227 () Bool)

(assert (=> start!82616 (= tp!65283 b_and!30227)))

(declare-fun b!962369 () Bool)

(declare-fun res!644152 () Bool)

(declare-fun e!542740 () Bool)

(assert (=> b!962369 (=> (not res!644152) (not e!542740))))

(declare-datatypes ((array!59125 0))(
  ( (array!59126 (arr!28427 (Array (_ BitVec 32) (_ BitVec 64))) (size!28907 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59125)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962369 (= res!644152 (validKeyInArray!0 (select (arr!28427 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34279 () Bool)

(declare-fun mapRes!34279 () Bool)

(declare-fun tp!65284 () Bool)

(declare-fun e!542739 () Bool)

(assert (=> mapNonEmpty!34279 (= mapRes!34279 (and tp!65284 e!542739))))

(declare-datatypes ((V!33681 0))(
  ( (V!33682 (val!10812 Int)) )
))
(declare-datatypes ((ValueCell!10280 0))(
  ( (ValueCellFull!10280 (v!13370 V!33681)) (EmptyCell!10280) )
))
(declare-fun mapValue!34279 () ValueCell!10280)

(declare-fun mapKey!34279 () (_ BitVec 32))

(declare-fun mapRest!34279 () (Array (_ BitVec 32) ValueCell!10280))

(declare-datatypes ((array!59127 0))(
  ( (array!59128 (arr!28428 (Array (_ BitVec 32) ValueCell!10280)) (size!28908 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59127)

(assert (=> mapNonEmpty!34279 (= (arr!28428 _values!1400) (store mapRest!34279 mapKey!34279 mapValue!34279))))

(declare-fun b!962370 () Bool)

(declare-fun res!644154 () Bool)

(assert (=> b!962370 (=> (not res!644154) (not e!542740))))

(declare-datatypes ((List!19851 0))(
  ( (Nil!19848) (Cons!19847 (h!21009 (_ BitVec 64)) (t!28222 List!19851)) )
))
(declare-fun arrayNoDuplicates!0 (array!59125 (_ BitVec 32) List!19851) Bool)

(assert (=> b!962370 (= res!644154 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19848))))

(declare-fun mapIsEmpty!34279 () Bool)

(assert (=> mapIsEmpty!34279 mapRes!34279))

(declare-fun b!962372 () Bool)

(declare-fun e!542743 () Bool)

(declare-fun e!542741 () Bool)

(assert (=> b!962372 (= e!542743 (and e!542741 mapRes!34279))))

(declare-fun condMapEmpty!34279 () Bool)

(declare-fun mapDefault!34279 () ValueCell!10280)

