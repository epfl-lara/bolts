; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82638 () Bool)

(assert start!82638)

(declare-fun b_free!18743 () Bool)

(declare-fun b_next!18743 () Bool)

(assert (=> start!82638 (= b_free!18743 (not b_next!18743))))

(declare-fun tp!65349 () Bool)

(declare-fun b_and!30249 () Bool)

(assert (=> start!82638 (= tp!65349 b_and!30249)))

(declare-fun b!962682 () Bool)

(declare-fun e!542905 () Bool)

(declare-fun tp_is_empty!21545 () Bool)

(assert (=> b!962682 (= e!542905 tp_is_empty!21545)))

(declare-fun b!962683 () Bool)

(declare-fun res!644369 () Bool)

(declare-fun e!542906 () Bool)

(assert (=> b!962683 (=> (not res!644369) (not e!542906))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962683 (= res!644369 (bvsgt from!2084 newFrom!159))))

(declare-fun res!644372 () Bool)

(assert (=> start!82638 (=> (not res!644372) (not e!542906))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82638 (= res!644372 (validMask!0 mask!2110))))

(assert (=> start!82638 e!542906))

(assert (=> start!82638 true))

(declare-datatypes ((V!33709 0))(
  ( (V!33710 (val!10823 Int)) )
))
(declare-datatypes ((ValueCell!10291 0))(
  ( (ValueCellFull!10291 (v!13381 V!33709)) (EmptyCell!10291) )
))
(declare-datatypes ((array!59167 0))(
  ( (array!59168 (arr!28448 (Array (_ BitVec 32) ValueCell!10291)) (size!28928 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59167)

(declare-fun e!542908 () Bool)

(declare-fun array_inv!21965 (array!59167) Bool)

(assert (=> start!82638 (and (array_inv!21965 _values!1400) e!542908)))

(declare-datatypes ((array!59169 0))(
  ( (array!59170 (arr!28449 (Array (_ BitVec 32) (_ BitVec 64))) (size!28929 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59169)

(declare-fun array_inv!21966 (array!59169) Bool)

(assert (=> start!82638 (array_inv!21966 _keys!1686)))

(assert (=> start!82638 tp!65349))

(assert (=> start!82638 tp_is_empty!21545))

(declare-fun mapIsEmpty!34312 () Bool)

(declare-fun mapRes!34312 () Bool)

(assert (=> mapIsEmpty!34312 mapRes!34312))

(declare-fun b!962684 () Bool)

(declare-fun res!644371 () Bool)

(assert (=> b!962684 (=> (not res!644371) (not e!542906))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33709)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33709)

(declare-fun defaultEntry!1403 () Int)

(declare-datatypes ((tuple2!13980 0))(
  ( (tuple2!13981 (_1!7000 (_ BitVec 64)) (_2!7000 V!33709)) )
))
(declare-datatypes ((List!19864 0))(
  ( (Nil!19861) (Cons!19860 (h!21022 tuple2!13980) (t!28235 List!19864)) )
))
(declare-datatypes ((ListLongMap!12691 0))(
  ( (ListLongMap!12692 (toList!6361 List!19864)) )
))
(declare-fun contains!5415 (ListLongMap!12691 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3546 (array!59169 array!59167 (_ BitVec 32) (_ BitVec 32) V!33709 V!33709 (_ BitVec 32) Int) ListLongMap!12691)

(assert (=> b!962684 (= res!644371 (contains!5415 (getCurrentListMap!3546 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28449 _keys!1686) i!803)))))

(declare-fun b!962685 () Bool)

(assert (=> b!962685 (= e!542906 (not true))))

(assert (=> b!962685 (contains!5415 (getCurrentListMap!3546 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28449 _keys!1686) i!803))))

(declare-datatypes ((Unit!32189 0))(
  ( (Unit!32190) )
))
(declare-fun lt!430863 () Unit!32189)

(declare-fun lemmaInListMapFromThenInFromMinusOne!3 (array!59169 array!59167 (_ BitVec 32) (_ BitVec 32) V!33709 V!33709 (_ BitVec 32) (_ BitVec 32) Int) Unit!32189)

(assert (=> b!962685 (= lt!430863 (lemmaInListMapFromThenInFromMinusOne!3 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!962686 () Bool)

(declare-fun res!644370 () Bool)

(assert (=> b!962686 (=> (not res!644370) (not e!542906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59169 (_ BitVec 32)) Bool)

(assert (=> b!962686 (= res!644370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34312 () Bool)

(declare-fun tp!65350 () Bool)

(assert (=> mapNonEmpty!34312 (= mapRes!34312 (and tp!65350 e!542905))))

(declare-fun mapRest!34312 () (Array (_ BitVec 32) ValueCell!10291))

(declare-fun mapValue!34312 () ValueCell!10291)

(declare-fun mapKey!34312 () (_ BitVec 32))

(assert (=> mapNonEmpty!34312 (= (arr!28448 _values!1400) (store mapRest!34312 mapKey!34312 mapValue!34312))))

(declare-fun b!962687 () Bool)

(declare-fun res!644368 () Bool)

(assert (=> b!962687 (=> (not res!644368) (not e!542906))))

(assert (=> b!962687 (= res!644368 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28929 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28929 _keys!1686))))))

(declare-fun b!962688 () Bool)

(declare-fun res!644367 () Bool)

(assert (=> b!962688 (=> (not res!644367) (not e!542906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962688 (= res!644367 (validKeyInArray!0 (select (arr!28449 _keys!1686) i!803)))))

(declare-fun b!962689 () Bool)

(declare-fun res!644366 () Bool)

(assert (=> b!962689 (=> (not res!644366) (not e!542906))))

(declare-datatypes ((List!19865 0))(
  ( (Nil!19862) (Cons!19861 (h!21023 (_ BitVec 64)) (t!28236 List!19865)) )
))
(declare-fun arrayNoDuplicates!0 (array!59169 (_ BitVec 32) List!19865) Bool)

(assert (=> b!962689 (= res!644366 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19862))))

(declare-fun b!962690 () Bool)

(declare-fun e!542904 () Bool)

(assert (=> b!962690 (= e!542904 tp_is_empty!21545)))

(declare-fun b!962691 () Bool)

(declare-fun res!644365 () Bool)

(assert (=> b!962691 (=> (not res!644365) (not e!542906))))

(assert (=> b!962691 (= res!644365 (and (= (size!28928 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28929 _keys!1686) (size!28928 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962692 () Bool)

(assert (=> b!962692 (= e!542908 (and e!542904 mapRes!34312))))

(declare-fun condMapEmpty!34312 () Bool)

(declare-fun mapDefault!34312 () ValueCell!10291)

