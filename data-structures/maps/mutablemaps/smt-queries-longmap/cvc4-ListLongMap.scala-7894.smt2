; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98148 () Bool)

(assert start!98148)

(declare-fun b_free!23813 () Bool)

(declare-fun b_next!23813 () Bool)

(assert (=> start!98148 (= b_free!23813 (not b_next!23813))))

(declare-fun tp!84144 () Bool)

(declare-fun b_and!38431 () Bool)

(assert (=> start!98148 (= tp!84144 b_and!38431)))

(declare-fun b!1127337 () Bool)

(declare-fun res!753434 () Bool)

(declare-fun e!641685 () Bool)

(assert (=> b!1127337 (=> (not res!753434) (not e!641685))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127337 (= res!753434 (validMask!0 mask!1564))))

(declare-fun b!1127338 () Bool)

(declare-fun res!753435 () Bool)

(assert (=> b!1127338 (=> (not res!753435) (not e!641685))))

(declare-datatypes ((array!73506 0))(
  ( (array!73507 (arr!35402 (Array (_ BitVec 32) (_ BitVec 64))) (size!35939 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73506)

(declare-datatypes ((List!24809 0))(
  ( (Nil!24806) (Cons!24805 (h!26014 (_ BitVec 64)) (t!35621 List!24809)) )
))
(declare-fun arrayNoDuplicates!0 (array!73506 (_ BitVec 32) List!24809) Bool)

(assert (=> b!1127338 (= res!753435 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24806))))

(declare-fun b!1127339 () Bool)

(declare-fun e!641692 () Bool)

(declare-datatypes ((V!42917 0))(
  ( (V!42918 (val!14228 Int)) )
))
(declare-datatypes ((tuple2!17984 0))(
  ( (tuple2!17985 (_1!9002 (_ BitVec 64)) (_2!9002 V!42917)) )
))
(declare-datatypes ((List!24810 0))(
  ( (Nil!24807) (Cons!24806 (h!26015 tuple2!17984) (t!35622 List!24810)) )
))
(declare-datatypes ((ListLongMap!15965 0))(
  ( (ListLongMap!15966 (toList!7998 List!24810)) )
))
(declare-fun call!47722 () ListLongMap!15965)

(declare-fun call!47723 () ListLongMap!15965)

(assert (=> b!1127339 (= e!641692 (= call!47722 call!47723))))

(declare-fun b!1127340 () Bool)

(declare-fun e!641690 () Bool)

(assert (=> b!1127340 (= e!641685 e!641690)))

(declare-fun res!753423 () Bool)

(assert (=> b!1127340 (=> (not res!753423) (not e!641690))))

(declare-fun lt!500541 () array!73506)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73506 (_ BitVec 32)) Bool)

(assert (=> b!1127340 (= res!753423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500541 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127340 (= lt!500541 (array!73507 (store (arr!35402 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35939 _keys!1208)))))

(declare-fun b!1127341 () Bool)

(declare-fun e!641686 () Bool)

(declare-fun tp_is_empty!28343 () Bool)

(assert (=> b!1127341 (= e!641686 tp_is_empty!28343)))

(declare-fun b!1127342 () Bool)

(declare-fun res!753432 () Bool)

(assert (=> b!1127342 (=> (not res!753432) (not e!641690))))

(assert (=> b!1127342 (= res!753432 (arrayNoDuplicates!0 lt!500541 #b00000000000000000000000000000000 Nil!24806))))

(declare-fun b!1127343 () Bool)

(declare-fun e!641689 () Bool)

(declare-fun mapRes!44332 () Bool)

(assert (=> b!1127343 (= e!641689 (and e!641686 mapRes!44332))))

(declare-fun condMapEmpty!44332 () Bool)

(declare-datatypes ((ValueCell!13462 0))(
  ( (ValueCellFull!13462 (v!16862 V!42917)) (EmptyCell!13462) )
))
(declare-datatypes ((array!73508 0))(
  ( (array!73509 (arr!35403 (Array (_ BitVec 32) ValueCell!13462)) (size!35940 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73508)

(declare-fun mapDefault!44332 () ValueCell!13462)

