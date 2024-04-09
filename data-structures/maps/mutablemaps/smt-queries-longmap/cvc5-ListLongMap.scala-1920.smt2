; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34174 () Bool)

(assert start!34174)

(declare-fun b_free!7189 () Bool)

(declare-fun b_next!7189 () Bool)

(assert (=> start!34174 (= b_free!7189 (not b_next!7189))))

(declare-fun tp!25100 () Bool)

(declare-fun b_and!14407 () Bool)

(assert (=> start!34174 (= tp!25100 b_and!14407)))

(declare-fun b!340259 () Bool)

(declare-fun res!188002 () Bool)

(declare-fun e!208750 () Bool)

(assert (=> b!340259 (=> (not res!188002) (not e!208750))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10499 0))(
  ( (V!10500 (val!3615 Int)) )
))
(declare-fun zeroValue!1467 () V!10499)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3227 0))(
  ( (ValueCellFull!3227 (v!5783 V!10499)) (EmptyCell!3227) )
))
(declare-datatypes ((array!17853 0))(
  ( (array!17854 (arr!8444 (Array (_ BitVec 32) ValueCell!3227)) (size!8796 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17853)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10499)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!17855 0))(
  ( (array!17856 (arr!8445 (Array (_ BitVec 32) (_ BitVec 64))) (size!8797 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17855)

(declare-datatypes ((tuple2!5234 0))(
  ( (tuple2!5235 (_1!2627 (_ BitVec 64)) (_2!2627 V!10499)) )
))
(declare-datatypes ((List!4879 0))(
  ( (Nil!4876) (Cons!4875 (h!5731 tuple2!5234) (t!9995 List!4879)) )
))
(declare-datatypes ((ListLongMap!4161 0))(
  ( (ListLongMap!4162 (toList!2096 List!4879)) )
))
(declare-fun contains!2146 (ListLongMap!4161 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1616 (array!17855 array!17853 (_ BitVec 32) (_ BitVec 32) V!10499 V!10499 (_ BitVec 32) Int) ListLongMap!4161)

(assert (=> b!340259 (= res!188002 (not (contains!2146 (getCurrentListMap!1616 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun res!187999 () Bool)

(assert (=> start!34174 (=> (not res!187999) (not e!208750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34174 (= res!187999 (validMask!0 mask!2385))))

(assert (=> start!34174 e!208750))

(assert (=> start!34174 true))

(declare-fun tp_is_empty!7141 () Bool)

(assert (=> start!34174 tp_is_empty!7141))

(assert (=> start!34174 tp!25100))

(declare-fun e!208755 () Bool)

(declare-fun array_inv!6250 (array!17853) Bool)

(assert (=> start!34174 (and (array_inv!6250 _values!1525) e!208755)))

(declare-fun array_inv!6251 (array!17855) Bool)

(assert (=> start!34174 (array_inv!6251 _keys!1895)))

(declare-fun b!340260 () Bool)

(declare-fun res!188000 () Bool)

(assert (=> b!340260 (=> (not res!188000) (not e!208750))))

(declare-datatypes ((List!4880 0))(
  ( (Nil!4877) (Cons!4876 (h!5732 (_ BitVec 64)) (t!9996 List!4880)) )
))
(declare-fun arrayNoDuplicates!0 (array!17855 (_ BitVec 32) List!4880) Bool)

(assert (=> b!340260 (= res!188000 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4877))))

(declare-fun b!340261 () Bool)

(declare-fun res!188001 () Bool)

(assert (=> b!340261 (=> (not res!188001) (not e!208750))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340261 (= res!188001 (validKeyInArray!0 k!1348))))

(declare-fun b!340262 () Bool)

(declare-fun e!208752 () Bool)

(assert (=> b!340262 (= e!208752 tp_is_empty!7141)))

(declare-fun b!340263 () Bool)

(declare-fun res!187997 () Bool)

(assert (=> b!340263 (=> (not res!187997) (not e!208750))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17855 (_ BitVec 32)) Bool)

(assert (=> b!340263 (= res!187997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12138 () Bool)

(declare-fun mapRes!12138 () Bool)

(assert (=> mapIsEmpty!12138 mapRes!12138))

(declare-fun b!340264 () Bool)

(assert (=> b!340264 (= e!208755 (and e!208752 mapRes!12138))))

(declare-fun condMapEmpty!12138 () Bool)

(declare-fun mapDefault!12138 () ValueCell!3227)

