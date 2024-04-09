; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35450 () Bool)

(assert start!35450)

(declare-fun b_free!7829 () Bool)

(declare-fun b_next!7829 () Bool)

(assert (=> start!35450 (= b_free!7829 (not b_next!7829))))

(declare-fun tp!27273 () Bool)

(declare-fun b_and!15089 () Bool)

(assert (=> start!35450 (= tp!27273 b_and!15089)))

(declare-fun b!354717 () Bool)

(declare-fun res!196759 () Bool)

(declare-fun e!217397 () Bool)

(assert (=> b!354717 (=> (not res!196759) (not e!217397))))

(declare-datatypes ((array!19337 0))(
  ( (array!19338 (arr!9159 (Array (_ BitVec 32) (_ BitVec 64))) (size!9511 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19337)

(declare-datatypes ((List!5333 0))(
  ( (Nil!5330) (Cons!5329 (h!6185 (_ BitVec 64)) (t!10491 List!5333)) )
))
(declare-fun arrayNoDuplicates!0 (array!19337 (_ BitVec 32) List!5333) Bool)

(assert (=> b!354717 (= res!196759 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5330))))

(declare-fun b!354718 () Bool)

(declare-fun res!196753 () Bool)

(assert (=> b!354718 (=> (not res!196753) (not e!217397))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!11503 0))(
  ( (V!11504 (val!3992 Int)) )
))
(declare-datatypes ((ValueCell!3604 0))(
  ( (ValueCellFull!3604 (v!6182 V!11503)) (EmptyCell!3604) )
))
(declare-datatypes ((array!19339 0))(
  ( (array!19340 (arr!9160 (Array (_ BitVec 32) ValueCell!3604)) (size!9512 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19339)

(declare-fun mask!1842 () (_ BitVec 32))

(assert (=> b!354718 (= res!196753 (and (= (size!9512 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9511 _keys!1456) (size!9512 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354719 () Bool)

(declare-fun res!196752 () Bool)

(assert (=> b!354719 (=> (not res!196752) (not e!217397))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354719 (= res!196752 (validKeyInArray!0 k!1077))))

(declare-fun b!354720 () Bool)

(declare-fun res!196756 () Bool)

(assert (=> b!354720 (=> (not res!196756) (not e!217397))))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!354720 (= res!196756 (validKeyInArray!0 (select (arr!9159 _keys!1456) from!1805)))))

(declare-fun b!354721 () Bool)

(declare-fun e!217396 () Bool)

(declare-fun tp_is_empty!7895 () Bool)

(assert (=> b!354721 (= e!217396 tp_is_empty!7895)))

(declare-fun b!354722 () Bool)

(declare-fun res!196755 () Bool)

(assert (=> b!354722 (=> (not res!196755) (not e!217397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19337 (_ BitVec 32)) Bool)

(assert (=> b!354722 (= res!196755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354723 () Bool)

(declare-fun res!196754 () Bool)

(assert (=> b!354723 (=> (not res!196754) (not e!217397))))

(assert (=> b!354723 (= res!196754 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9511 _keys!1456))))))

(declare-fun b!354724 () Bool)

(declare-fun e!217399 () Bool)

(declare-fun e!217400 () Bool)

(declare-fun mapRes!13350 () Bool)

(assert (=> b!354724 (= e!217399 (and e!217400 mapRes!13350))))

(declare-fun condMapEmpty!13350 () Bool)

(declare-fun mapDefault!13350 () ValueCell!3604)

