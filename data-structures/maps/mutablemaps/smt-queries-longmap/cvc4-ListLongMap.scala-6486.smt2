; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82788 () Bool)

(assert start!82788)

(declare-fun b_free!18893 () Bool)

(declare-fun b_next!18893 () Bool)

(assert (=> start!82788 (= b_free!18893 (not b_next!18893))))

(declare-fun tp!65799 () Bool)

(declare-fun b_and!30399 () Bool)

(assert (=> start!82788 (= tp!65799 b_and!30399)))

(declare-fun b!965150 () Bool)

(declare-fun res!646161 () Bool)

(declare-fun e!544113 () Bool)

(assert (=> b!965150 (=> (not res!646161) (not e!544113))))

(declare-datatypes ((array!59455 0))(
  ( (array!59456 (arr!28592 (Array (_ BitVec 32) (_ BitVec 64))) (size!29072 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59455)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!965150 (= res!646161 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29072 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29072 _keys!1686))))))

(declare-fun b!965151 () Bool)

(assert (=> b!965151 (= e!544113 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33909 0))(
  ( (V!33910 (val!10898 Int)) )
))
(declare-datatypes ((ValueCell!10366 0))(
  ( (ValueCellFull!10366 (v!13456 V!33909)) (EmptyCell!10366) )
))
(declare-datatypes ((array!59457 0))(
  ( (array!59458 (arr!28593 (Array (_ BitVec 32) ValueCell!10366)) (size!29073 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59457)

(declare-fun minValue!1342 () V!33909)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!431169 () Bool)

(declare-fun zeroValue!1342 () V!33909)

(declare-datatypes ((tuple2!14090 0))(
  ( (tuple2!14091 (_1!7055 (_ BitVec 64)) (_2!7055 V!33909)) )
))
(declare-datatypes ((List!19966 0))(
  ( (Nil!19963) (Cons!19962 (h!21124 tuple2!14090) (t!28337 List!19966)) )
))
(declare-datatypes ((ListLongMap!12801 0))(
  ( (ListLongMap!12802 (toList!6416 List!19966)) )
))
(declare-fun contains!5470 (ListLongMap!12801 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3601 (array!59455 array!59457 (_ BitVec 32) (_ BitVec 32) V!33909 V!33909 (_ BitVec 32) Int) ListLongMap!12801)

(assert (=> b!965151 (= lt!431169 (contains!5470 (getCurrentListMap!3601 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28592 _keys!1686) i!803)))))

(declare-fun b!965152 () Bool)

(declare-fun res!646162 () Bool)

(assert (=> b!965152 (=> (not res!646162) (not e!544113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965152 (= res!646162 (validKeyInArray!0 (select (arr!28592 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34537 () Bool)

(declare-fun mapRes!34537 () Bool)

(assert (=> mapIsEmpty!34537 mapRes!34537))

(declare-fun res!646159 () Bool)

(assert (=> start!82788 (=> (not res!646159) (not e!544113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82788 (= res!646159 (validMask!0 mask!2110))))

(assert (=> start!82788 e!544113))

(assert (=> start!82788 true))

(declare-fun e!544112 () Bool)

(declare-fun array_inv!22049 (array!59457) Bool)

(assert (=> start!82788 (and (array_inv!22049 _values!1400) e!544112)))

(declare-fun array_inv!22050 (array!59455) Bool)

(assert (=> start!82788 (array_inv!22050 _keys!1686)))

(assert (=> start!82788 tp!65799))

(declare-fun tp_is_empty!21695 () Bool)

(assert (=> start!82788 tp_is_empty!21695))

(declare-fun b!965153 () Bool)

(declare-fun res!646158 () Bool)

(assert (=> b!965153 (=> (not res!646158) (not e!544113))))

(assert (=> b!965153 (= res!646158 (and (= (size!29073 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29072 _keys!1686) (size!29073 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965154 () Bool)

(declare-fun res!646163 () Bool)

(assert (=> b!965154 (=> (not res!646163) (not e!544113))))

(declare-datatypes ((List!19967 0))(
  ( (Nil!19964) (Cons!19963 (h!21125 (_ BitVec 64)) (t!28338 List!19967)) )
))
(declare-fun arrayNoDuplicates!0 (array!59455 (_ BitVec 32) List!19967) Bool)

(assert (=> b!965154 (= res!646163 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19964))))

(declare-fun b!965155 () Bool)

(declare-fun res!646160 () Bool)

(assert (=> b!965155 (=> (not res!646160) (not e!544113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59455 (_ BitVec 32)) Bool)

(assert (=> b!965155 (= res!646160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34537 () Bool)

(declare-fun tp!65800 () Bool)

(declare-fun e!544114 () Bool)

(assert (=> mapNonEmpty!34537 (= mapRes!34537 (and tp!65800 e!544114))))

(declare-fun mapKey!34537 () (_ BitVec 32))

(declare-fun mapValue!34537 () ValueCell!10366)

(declare-fun mapRest!34537 () (Array (_ BitVec 32) ValueCell!10366))

(assert (=> mapNonEmpty!34537 (= (arr!28593 _values!1400) (store mapRest!34537 mapKey!34537 mapValue!34537))))

(declare-fun b!965156 () Bool)

(assert (=> b!965156 (= e!544114 tp_is_empty!21695)))

(declare-fun b!965157 () Bool)

(declare-fun e!544111 () Bool)

(assert (=> b!965157 (= e!544112 (and e!544111 mapRes!34537))))

(declare-fun condMapEmpty!34537 () Bool)

(declare-fun mapDefault!34537 () ValueCell!10366)

