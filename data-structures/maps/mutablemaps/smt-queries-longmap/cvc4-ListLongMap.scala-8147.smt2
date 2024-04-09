; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99788 () Bool)

(assert start!99788)

(declare-fun b_free!25331 () Bool)

(declare-fun b_next!25331 () Bool)

(assert (=> start!99788 (= b_free!25331 (not b_next!25331))))

(declare-fun tp!88707 () Bool)

(declare-fun b_and!41543 () Bool)

(assert (=> start!99788 (= tp!88707 b_and!41543)))

(declare-fun mapNonEmpty!46619 () Bool)

(declare-fun mapRes!46619 () Bool)

(declare-fun tp!88708 () Bool)

(declare-fun e!673491 () Bool)

(assert (=> mapNonEmpty!46619 (= mapRes!46619 (and tp!88708 e!673491))))

(declare-datatypes ((V!44941 0))(
  ( (V!44942 (val!14987 Int)) )
))
(declare-datatypes ((ValueCell!14221 0))(
  ( (ValueCellFull!14221 (v!17626 V!44941)) (EmptyCell!14221) )
))
(declare-fun mapRest!46619 () (Array (_ BitVec 32) ValueCell!14221))

(declare-fun mapKey!46619 () (_ BitVec 32))

(declare-fun mapValue!46619 () ValueCell!14221)

(declare-datatypes ((array!76490 0))(
  ( (array!76491 (arr!36891 (Array (_ BitVec 32) ValueCell!14221)) (size!37428 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76490)

(assert (=> mapNonEmpty!46619 (= (arr!36891 _values!996) (store mapRest!46619 mapKey!46619 mapValue!46619))))

(declare-fun b!1184483 () Bool)

(declare-fun res!787405 () Bool)

(declare-fun e!673501 () Bool)

(assert (=> b!1184483 (=> (not res!787405) (not e!673501))))

(declare-datatypes ((array!76492 0))(
  ( (array!76493 (arr!36892 (Array (_ BitVec 32) (_ BitVec 64))) (size!37429 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76492)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76492 (_ BitVec 32)) Bool)

(assert (=> b!1184483 (= res!787405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1184484 () Bool)

(declare-fun e!673497 () Bool)

(declare-fun e!673490 () Bool)

(assert (=> b!1184484 (= e!673497 (and e!673490 mapRes!46619))))

(declare-fun condMapEmpty!46619 () Bool)

(declare-fun mapDefault!46619 () ValueCell!14221)

