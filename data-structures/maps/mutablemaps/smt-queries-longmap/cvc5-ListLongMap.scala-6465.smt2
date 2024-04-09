; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82658 () Bool)

(assert start!82658)

(declare-fun b_free!18763 () Bool)

(declare-fun b_next!18763 () Bool)

(assert (=> start!82658 (= b_free!18763 (not b_next!18763))))

(declare-fun tp!65410 () Bool)

(declare-fun b_and!30269 () Bool)

(assert (=> start!82658 (= tp!65410 b_and!30269)))

(declare-fun b!963012 () Bool)

(declare-fun res!644610 () Bool)

(declare-fun e!543054 () Bool)

(assert (=> b!963012 (=> (not res!644610) (not e!543054))))

(declare-datatypes ((array!59207 0))(
  ( (array!59208 (arr!28468 (Array (_ BitVec 32) (_ BitVec 64))) (size!28948 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59207)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!963012 (= res!644610 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28948 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28948 _keys!1686))))))

(declare-fun b!963013 () Bool)

(declare-fun e!543057 () Bool)

(declare-fun tp_is_empty!21565 () Bool)

(assert (=> b!963013 (= e!543057 tp_is_empty!21565)))

(declare-fun b!963014 () Bool)

(declare-fun res!644611 () Bool)

(assert (=> b!963014 (=> (not res!644611) (not e!543054))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33737 0))(
  ( (V!33738 (val!10833 Int)) )
))
(declare-datatypes ((ValueCell!10301 0))(
  ( (ValueCellFull!10301 (v!13391 V!33737)) (EmptyCell!10301) )
))
(declare-datatypes ((array!59209 0))(
  ( (array!59210 (arr!28469 (Array (_ BitVec 32) ValueCell!10301)) (size!28949 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59209)

(declare-fun minValue!1342 () V!33737)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33737)

(declare-datatypes ((tuple2!13998 0))(
  ( (tuple2!13999 (_1!7009 (_ BitVec 64)) (_2!7009 V!33737)) )
))
(declare-datatypes ((List!19881 0))(
  ( (Nil!19878) (Cons!19877 (h!21039 tuple2!13998) (t!28252 List!19881)) )
))
(declare-datatypes ((ListLongMap!12709 0))(
  ( (ListLongMap!12710 (toList!6370 List!19881)) )
))
(declare-fun contains!5424 (ListLongMap!12709 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3555 (array!59207 array!59209 (_ BitVec 32) (_ BitVec 32) V!33737 V!33737 (_ BitVec 32) Int) ListLongMap!12709)

(assert (=> b!963014 (= res!644611 (contains!5424 (getCurrentListMap!3555 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28468 _keys!1686) i!803)))))

(declare-fun b!963016 () Bool)

(declare-fun res!644608 () Bool)

(assert (=> b!963016 (=> (not res!644608) (not e!543054))))

(assert (=> b!963016 (= res!644608 (and (= (size!28949 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28948 _keys!1686) (size!28949 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34342 () Bool)

(declare-fun mapRes!34342 () Bool)

(assert (=> mapIsEmpty!34342 mapRes!34342))

(declare-fun b!963017 () Bool)

(declare-fun e!543058 () Bool)

(assert (=> b!963017 (= e!543058 (and e!543057 mapRes!34342))))

(declare-fun condMapEmpty!34342 () Bool)

(declare-fun mapDefault!34342 () ValueCell!10301)

