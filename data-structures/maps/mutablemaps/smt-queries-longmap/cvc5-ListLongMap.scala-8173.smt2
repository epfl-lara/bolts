; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99940 () Bool)

(assert start!99940)

(declare-fun b_free!25483 () Bool)

(declare-fun b_next!25483 () Bool)

(assert (=> start!99940 (= b_free!25483 (not b_next!25483))))

(declare-fun tp!89164 () Bool)

(declare-fun b_and!41847 () Bool)

(assert (=> start!99940 (= tp!89164 b_and!41847)))

(declare-fun b!1188961 () Bool)

(declare-fun res!790680 () Bool)

(declare-fun e!676044 () Bool)

(assert (=> b!1188961 (=> (not res!790680) (not e!676044))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188961 (= res!790680 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!46847 () Bool)

(declare-fun mapRes!46847 () Bool)

(declare-fun tp!89163 () Bool)

(declare-fun e!676043 () Bool)

(assert (=> mapNonEmpty!46847 (= mapRes!46847 (and tp!89163 e!676043))))

(declare-datatypes ((V!45145 0))(
  ( (V!45146 (val!15063 Int)) )
))
(declare-datatypes ((ValueCell!14297 0))(
  ( (ValueCellFull!14297 (v!17702 V!45145)) (EmptyCell!14297) )
))
(declare-fun mapRest!46847 () (Array (_ BitVec 32) ValueCell!14297))

(declare-fun mapValue!46847 () ValueCell!14297)

(declare-datatypes ((array!76794 0))(
  ( (array!76795 (arr!37043 (Array (_ BitVec 32) ValueCell!14297)) (size!37580 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76794)

(declare-fun mapKey!46847 () (_ BitVec 32))

(assert (=> mapNonEmpty!46847 (= (arr!37043 _values!996) (store mapRest!46847 mapKey!46847 mapValue!46847))))

(declare-fun mapIsEmpty!46847 () Bool)

(assert (=> mapIsEmpty!46847 mapRes!46847))

(declare-fun b!1188962 () Bool)

(declare-fun e!676045 () Bool)

(declare-fun e!676039 () Bool)

(assert (=> b!1188962 (= e!676045 (and e!676039 mapRes!46847))))

(declare-fun condMapEmpty!46847 () Bool)

(declare-fun mapDefault!46847 () ValueCell!14297)

