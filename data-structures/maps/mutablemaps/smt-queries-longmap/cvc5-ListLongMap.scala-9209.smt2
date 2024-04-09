; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110638 () Bool)

(assert start!110638)

(declare-fun b_free!29437 () Bool)

(declare-fun b_next!29437 () Bool)

(assert (=> start!110638 (= b_free!29437 (not b_next!29437))))

(declare-fun tp!103634 () Bool)

(declare-fun b_and!47655 () Bool)

(assert (=> start!110638 (= tp!103634 b_and!47655)))

(declare-fun b!1308542 () Bool)

(declare-fun res!868745 () Bool)

(declare-fun e!746613 () Bool)

(assert (=> b!1308542 (=> (not res!868745) (not e!746613))))

(declare-datatypes ((array!87299 0))(
  ( (array!87300 (arr!42125 (Array (_ BitVec 32) (_ BitVec 64))) (size!42676 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87299)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308542 (= res!868745 (validKeyInArray!0 (select (arr!42125 _keys!1628) from!2020)))))

(declare-fun b!1308543 () Bool)

(declare-fun res!868743 () Bool)

(assert (=> b!1308543 (=> (not res!868743) (not e!746613))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!51993 0))(
  ( (V!51994 (val!17658 Int)) )
))
(declare-fun minValue!1296 () V!51993)

(declare-datatypes ((ValueCell!16685 0))(
  ( (ValueCellFull!16685 (v!20283 V!51993)) (EmptyCell!16685) )
))
(declare-datatypes ((array!87301 0))(
  ( (array!87302 (arr!42126 (Array (_ BitVec 32) ValueCell!16685)) (size!42677 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87301)

(declare-fun zeroValue!1296 () V!51993)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22900 0))(
  ( (tuple2!22901 (_1!11460 (_ BitVec 64)) (_2!11460 V!51993)) )
))
(declare-datatypes ((List!30073 0))(
  ( (Nil!30070) (Cons!30069 (h!31278 tuple2!22900) (t!43686 List!30073)) )
))
(declare-datatypes ((ListLongMap!20569 0))(
  ( (ListLongMap!20570 (toList!10300 List!30073)) )
))
(declare-fun contains!8386 (ListLongMap!20569 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5256 (array!87299 array!87301 (_ BitVec 32) (_ BitVec 32) V!51993 V!51993 (_ BitVec 32) Int) ListLongMap!20569)

(assert (=> b!1308543 (= res!868743 (contains!8386 (getCurrentListMap!5256 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun res!868740 () Bool)

(assert (=> start!110638 (=> (not res!868740) (not e!746613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110638 (= res!868740 (validMask!0 mask!2040))))

(assert (=> start!110638 e!746613))

(assert (=> start!110638 tp!103634))

(declare-fun array_inv!31841 (array!87299) Bool)

(assert (=> start!110638 (array_inv!31841 _keys!1628)))

(assert (=> start!110638 true))

(declare-fun tp_is_empty!35167 () Bool)

(assert (=> start!110638 tp_is_empty!35167))

(declare-fun e!746615 () Bool)

(declare-fun array_inv!31842 (array!87301) Bool)

(assert (=> start!110638 (and (array_inv!31842 _values!1354) e!746615)))

(declare-fun b!1308544 () Bool)

(declare-fun res!868746 () Bool)

(assert (=> b!1308544 (=> (not res!868746) (not e!746613))))

(assert (=> b!1308544 (= res!868746 (and (= (size!42677 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42676 _keys!1628) (size!42677 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308545 () Bool)

(declare-fun e!746611 () Bool)

(declare-fun mapRes!54379 () Bool)

(assert (=> b!1308545 (= e!746615 (and e!746611 mapRes!54379))))

(declare-fun condMapEmpty!54379 () Bool)

(declare-fun mapDefault!54379 () ValueCell!16685)

