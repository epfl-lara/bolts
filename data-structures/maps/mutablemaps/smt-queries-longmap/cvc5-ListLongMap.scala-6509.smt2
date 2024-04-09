; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82922 () Bool)

(assert start!82922)

(declare-fun b_free!19021 () Bool)

(declare-fun b_next!19021 () Bool)

(assert (=> start!82922 (= b_free!19021 (not b_next!19021))))

(declare-fun tp!66193 () Bool)

(declare-fun b_and!30527 () Bool)

(assert (=> start!82922 (= tp!66193 b_and!30527)))

(declare-fun b!967035 () Bool)

(declare-fun res!647444 () Bool)

(declare-fun e!545119 () Bool)

(assert (=> b!967035 (=> (not res!647444) (not e!545119))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34089 0))(
  ( (V!34090 (val!10965 Int)) )
))
(declare-datatypes ((ValueCell!10433 0))(
  ( (ValueCellFull!10433 (v!13523 V!34089)) (EmptyCell!10433) )
))
(declare-datatypes ((array!59717 0))(
  ( (array!59718 (arr!28723 (Array (_ BitVec 32) ValueCell!10433)) (size!29203 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59717)

(declare-datatypes ((array!59719 0))(
  ( (array!59720 (arr!28724 (Array (_ BitVec 32) (_ BitVec 64))) (size!29204 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59719)

(declare-fun minValue!1342 () V!34089)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34089)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14192 0))(
  ( (tuple2!14193 (_1!7106 (_ BitVec 64)) (_2!7106 V!34089)) )
))
(declare-datatypes ((List!20067 0))(
  ( (Nil!20064) (Cons!20063 (h!21225 tuple2!14192) (t!28438 List!20067)) )
))
(declare-datatypes ((ListLongMap!12903 0))(
  ( (ListLongMap!12904 (toList!6467 List!20067)) )
))
(declare-fun contains!5518 (ListLongMap!12903 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3652 (array!59719 array!59717 (_ BitVec 32) (_ BitVec 32) V!34089 V!34089 (_ BitVec 32) Int) ListLongMap!12903)

(assert (=> b!967035 (= res!647444 (contains!5518 (getCurrentListMap!3652 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28724 _keys!1686) i!803)))))

(declare-fun b!967036 () Bool)

(declare-fun res!647441 () Bool)

(assert (=> b!967036 (=> (not res!647441) (not e!545119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59719 (_ BitVec 32)) Bool)

(assert (=> b!967036 (= res!647441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967038 () Bool)

(declare-fun res!647442 () Bool)

(assert (=> b!967038 (=> (not res!647442) (not e!545119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967038 (= res!647442 (validKeyInArray!0 (select (arr!28724 _keys!1686) i!803)))))

(declare-fun b!967039 () Bool)

(assert (=> b!967039 (= e!545119 (not true))))

(assert (=> b!967039 (contains!5518 (getCurrentListMap!3652 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28724 _keys!1686) i!803))))

(declare-datatypes ((Unit!32287 0))(
  ( (Unit!32288) )
))
(declare-fun lt!431343 () Unit!32287)

(declare-fun lemmaInListMapFromThenInFromMinusOne!50 (array!59719 array!59717 (_ BitVec 32) (_ BitVec 32) V!34089 V!34089 (_ BitVec 32) (_ BitVec 32) Int) Unit!32287)

(assert (=> b!967039 (= lt!431343 (lemmaInListMapFromThenInFromMinusOne!50 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967040 () Bool)

(declare-fun e!545115 () Bool)

(declare-fun e!545117 () Bool)

(declare-fun mapRes!34738 () Bool)

(assert (=> b!967040 (= e!545115 (and e!545117 mapRes!34738))))

(declare-fun condMapEmpty!34738 () Bool)

(declare-fun mapDefault!34738 () ValueCell!10433)

