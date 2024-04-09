; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82664 () Bool)

(assert start!82664)

(declare-fun b_free!18769 () Bool)

(declare-fun b_next!18769 () Bool)

(assert (=> start!82664 (= b_free!18769 (not b_next!18769))))

(declare-fun tp!65427 () Bool)

(declare-fun b_and!30275 () Bool)

(assert (=> start!82664 (= tp!65427 b_and!30275)))

(declare-fun b!963111 () Bool)

(declare-fun res!644683 () Bool)

(declare-fun e!543103 () Bool)

(assert (=> b!963111 (=> (not res!644683) (not e!543103))))

(declare-datatypes ((array!59219 0))(
  ( (array!59220 (arr!28474 (Array (_ BitVec 32) (_ BitVec 64))) (size!28954 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59219)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!963111 (= res!644683 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28954 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28954 _keys!1686))))))

(declare-fun b!963112 () Bool)

(declare-fun res!644678 () Bool)

(assert (=> b!963112 (=> (not res!644678) (not e!543103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963112 (= res!644678 (validKeyInArray!0 (select (arr!28474 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34351 () Bool)

(declare-fun mapRes!34351 () Bool)

(declare-fun tp!65428 () Bool)

(declare-fun e!543099 () Bool)

(assert (=> mapNonEmpty!34351 (= mapRes!34351 (and tp!65428 e!543099))))

(declare-datatypes ((V!33745 0))(
  ( (V!33746 (val!10836 Int)) )
))
(declare-datatypes ((ValueCell!10304 0))(
  ( (ValueCellFull!10304 (v!13394 V!33745)) (EmptyCell!10304) )
))
(declare-fun mapRest!34351 () (Array (_ BitVec 32) ValueCell!10304))

(declare-datatypes ((array!59221 0))(
  ( (array!59222 (arr!28475 (Array (_ BitVec 32) ValueCell!10304)) (size!28955 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59221)

(declare-fun mapKey!34351 () (_ BitVec 32))

(declare-fun mapValue!34351 () ValueCell!10304)

(assert (=> mapNonEmpty!34351 (= (arr!28475 _values!1400) (store mapRest!34351 mapKey!34351 mapValue!34351))))

(declare-fun b!963113 () Bool)

(declare-fun res!644679 () Bool)

(assert (=> b!963113 (=> (not res!644679) (not e!543103))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!963113 (= res!644679 (and (= (size!28955 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28954 _keys!1686) (size!28955 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!963114 () Bool)

(declare-fun res!644677 () Bool)

(assert (=> b!963114 (=> (not res!644677) (not e!543103))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59219 (_ BitVec 32)) Bool)

(assert (=> b!963114 (= res!644677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963115 () Bool)

(declare-fun res!644684 () Bool)

(assert (=> b!963115 (=> (not res!644684) (not e!543103))))

(assert (=> b!963115 (= res!644684 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963116 () Bool)

(declare-fun tp_is_empty!21571 () Bool)

(assert (=> b!963116 (= e!543099 tp_is_empty!21571)))

(declare-fun b!963117 () Bool)

(declare-fun e!543100 () Bool)

(assert (=> b!963117 (= e!543100 tp_is_empty!21571)))

(declare-fun b!963119 () Bool)

(declare-fun res!644680 () Bool)

(assert (=> b!963119 (=> (not res!644680) (not e!543103))))

(declare-datatypes ((List!19885 0))(
  ( (Nil!19882) (Cons!19881 (h!21043 (_ BitVec 64)) (t!28256 List!19885)) )
))
(declare-fun arrayNoDuplicates!0 (array!59219 (_ BitVec 32) List!19885) Bool)

(assert (=> b!963119 (= res!644680 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19882))))

(declare-fun b!963120 () Bool)

(declare-fun e!543101 () Bool)

(assert (=> b!963120 (= e!543101 (and e!543100 mapRes!34351))))

(declare-fun condMapEmpty!34351 () Bool)

(declare-fun mapDefault!34351 () ValueCell!10304)

