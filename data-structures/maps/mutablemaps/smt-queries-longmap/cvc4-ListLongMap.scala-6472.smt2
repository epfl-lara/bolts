; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82704 () Bool)

(assert start!82704)

(declare-fun b_free!18809 () Bool)

(declare-fun b_next!18809 () Bool)

(assert (=> start!82704 (= b_free!18809 (not b_next!18809))))

(declare-fun tp!65547 () Bool)

(declare-fun b_and!30315 () Bool)

(assert (=> start!82704 (= tp!65547 b_and!30315)))

(declare-fun mapIsEmpty!34411 () Bool)

(declare-fun mapRes!34411 () Bool)

(assert (=> mapIsEmpty!34411 mapRes!34411))

(declare-fun b!963771 () Bool)

(declare-fun e!543403 () Bool)

(declare-fun tp_is_empty!21611 () Bool)

(assert (=> b!963771 (= e!543403 tp_is_empty!21611)))

(declare-fun b!963772 () Bool)

(declare-fun e!543399 () Bool)

(assert (=> b!963772 (= e!543399 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33797 0))(
  ( (V!33798 (val!10856 Int)) )
))
(declare-datatypes ((ValueCell!10324 0))(
  ( (ValueCellFull!10324 (v!13414 V!33797)) (EmptyCell!10324) )
))
(declare-datatypes ((array!59297 0))(
  ( (array!59298 (arr!28513 (Array (_ BitVec 32) ValueCell!10324)) (size!28993 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59297)

(declare-datatypes ((array!59299 0))(
  ( (array!59300 (arr!28514 (Array (_ BitVec 32) (_ BitVec 64))) (size!28994 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59299)

(declare-fun minValue!1342 () V!33797)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33797)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14034 0))(
  ( (tuple2!14035 (_1!7027 (_ BitVec 64)) (_2!7027 V!33797)) )
))
(declare-datatypes ((List!19913 0))(
  ( (Nil!19910) (Cons!19909 (h!21071 tuple2!14034) (t!28284 List!19913)) )
))
(declare-datatypes ((ListLongMap!12745 0))(
  ( (ListLongMap!12746 (toList!6388 List!19913)) )
))
(declare-fun contains!5442 (ListLongMap!12745 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3573 (array!59299 array!59297 (_ BitVec 32) (_ BitVec 32) V!33797 V!33797 (_ BitVec 32) Int) ListLongMap!12745)

(assert (=> b!963772 (contains!5442 (getCurrentListMap!3573 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28514 _keys!1686) i!803))))

(declare-datatypes ((Unit!32231 0))(
  ( (Unit!32232) )
))
(declare-fun lt!430962 () Unit!32231)

(declare-fun lemmaInListMapFromThenInFromMinusOne!24 (array!59299 array!59297 (_ BitVec 32) (_ BitVec 32) V!33797 V!33797 (_ BitVec 32) (_ BitVec 32) Int) Unit!32231)

(assert (=> b!963772 (= lt!430962 (lemmaInListMapFromThenInFromMinusOne!24 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963773 () Bool)

(declare-fun res!645158 () Bool)

(assert (=> b!963773 (=> (not res!645158) (not e!543399))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963773 (= res!645158 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963774 () Bool)

(declare-fun res!645160 () Bool)

(assert (=> b!963774 (=> (not res!645160) (not e!543399))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59299 (_ BitVec 32)) Bool)

(assert (=> b!963774 (= res!645160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963775 () Bool)

(declare-fun res!645163 () Bool)

(assert (=> b!963775 (=> (not res!645163) (not e!543399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963775 (= res!645163 (validKeyInArray!0 (select (arr!28514 _keys!1686) i!803)))))

(declare-fun b!963776 () Bool)

(declare-fun res!645157 () Bool)

(assert (=> b!963776 (=> (not res!645157) (not e!543399))))

(assert (=> b!963776 (= res!645157 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28994 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28994 _keys!1686))))))

(declare-fun res!645162 () Bool)

(assert (=> start!82704 (=> (not res!645162) (not e!543399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82704 (= res!645162 (validMask!0 mask!2110))))

(assert (=> start!82704 e!543399))

(assert (=> start!82704 true))

(declare-fun e!543401 () Bool)

(declare-fun array_inv!22003 (array!59297) Bool)

(assert (=> start!82704 (and (array_inv!22003 _values!1400) e!543401)))

(declare-fun array_inv!22004 (array!59299) Bool)

(assert (=> start!82704 (array_inv!22004 _keys!1686)))

(assert (=> start!82704 tp!65547))

(assert (=> start!82704 tp_is_empty!21611))

(declare-fun mapNonEmpty!34411 () Bool)

(declare-fun tp!65548 () Bool)

(declare-fun e!543400 () Bool)

(assert (=> mapNonEmpty!34411 (= mapRes!34411 (and tp!65548 e!543400))))

(declare-fun mapRest!34411 () (Array (_ BitVec 32) ValueCell!10324))

(declare-fun mapValue!34411 () ValueCell!10324)

(declare-fun mapKey!34411 () (_ BitVec 32))

(assert (=> mapNonEmpty!34411 (= (arr!28513 _values!1400) (store mapRest!34411 mapKey!34411 mapValue!34411))))

(declare-fun b!963777 () Bool)

(assert (=> b!963777 (= e!543401 (and e!543403 mapRes!34411))))

(declare-fun condMapEmpty!34411 () Bool)

(declare-fun mapDefault!34411 () ValueCell!10324)

