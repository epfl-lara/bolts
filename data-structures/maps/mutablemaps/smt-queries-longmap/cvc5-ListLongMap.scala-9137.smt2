; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109642 () Bool)

(assert start!109642)

(declare-fun b_free!29095 () Bool)

(declare-fun b_next!29095 () Bool)

(assert (=> start!109642 (= b_free!29095 (not b_next!29095))))

(declare-fun tp!102404 () Bool)

(declare-fun b_and!47195 () Bool)

(assert (=> start!109642 (= tp!102404 b_and!47195)))

(declare-fun b!1298189 () Bool)

(declare-fun res!862840 () Bool)

(declare-fun e!740660 () Bool)

(assert (=> b!1298189 (=> (not res!862840) (not e!740660))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86439 0))(
  ( (array!86440 (arr!41716 (Array (_ BitVec 32) (_ BitVec 64))) (size!42267 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86439)

(assert (=> b!1298189 (= res!862840 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42267 _keys!1741))))))

(declare-fun b!1298190 () Bool)

(declare-fun res!862836 () Bool)

(assert (=> b!1298190 (=> (not res!862836) (not e!740660))))

(declare-datatypes ((List!29796 0))(
  ( (Nil!29793) (Cons!29792 (h!31001 (_ BitVec 64)) (t!43367 List!29796)) )
))
(declare-fun arrayNoDuplicates!0 (array!86439 (_ BitVec 32) List!29796) Bool)

(assert (=> b!1298190 (= res!862836 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29793))))

(declare-fun b!1298191 () Bool)

(assert (=> b!1298191 (= e!740660 (not true))))

(declare-datatypes ((V!51417 0))(
  ( (V!51418 (val!17442 Int)) )
))
(declare-fun minValue!1387 () V!51417)

(declare-fun zeroValue!1387 () V!51417)

(declare-datatypes ((ValueCell!16469 0))(
  ( (ValueCellFull!16469 (v!20043 V!51417)) (EmptyCell!16469) )
))
(declare-datatypes ((array!86441 0))(
  ( (array!86442 (arr!41717 (Array (_ BitVec 32) ValueCell!16469)) (size!42268 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86441)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22634 0))(
  ( (tuple2!22635 (_1!11327 (_ BitVec 64)) (_2!11327 V!51417)) )
))
(declare-datatypes ((List!29797 0))(
  ( (Nil!29794) (Cons!29793 (h!31002 tuple2!22634) (t!43368 List!29797)) )
))
(declare-datatypes ((ListLongMap!20303 0))(
  ( (ListLongMap!20304 (toList!10167 List!29797)) )
))
(declare-fun contains!8221 (ListLongMap!20303 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5141 (array!86439 array!86441 (_ BitVec 32) (_ BitVec 32) V!51417 V!51417 (_ BitVec 32) Int) ListLongMap!20303)

(assert (=> b!1298191 (contains!8221 (getCurrentListMap!5141 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42928 0))(
  ( (Unit!42929) )
))
(declare-fun lt!580624 () Unit!42928)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!39 (array!86439 array!86441 (_ BitVec 32) (_ BitVec 32) V!51417 V!51417 (_ BitVec 64) (_ BitVec 32) Int) Unit!42928)

(assert (=> b!1298191 (= lt!580624 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!39 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298192 () Bool)

(declare-fun res!862842 () Bool)

(assert (=> b!1298192 (=> (not res!862842) (not e!740660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86439 (_ BitVec 32)) Bool)

(assert (=> b!1298192 (= res!862842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1298193 () Bool)

(declare-fun e!740661 () Bool)

(declare-fun e!740659 () Bool)

(declare-fun mapRes!53663 () Bool)

(assert (=> b!1298193 (= e!740661 (and e!740659 mapRes!53663))))

(declare-fun condMapEmpty!53663 () Bool)

(declare-fun mapDefault!53663 () ValueCell!16469)

