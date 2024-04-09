; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83174 () Bool)

(assert start!83174)

(declare-fun b_free!19139 () Bool)

(declare-fun b_next!19139 () Bool)

(assert (=> start!83174 (= b_free!19139 (not b_next!19139))))

(declare-fun tp!66696 () Bool)

(declare-fun b_and!30645 () Bool)

(assert (=> start!83174 (= tp!66696 b_and!30645)))

(declare-fun b!969821 () Bool)

(declare-fun res!649229 () Bool)

(declare-fun e!546788 () Bool)

(assert (=> b!969821 (=> (not res!649229) (not e!546788))))

(declare-datatypes ((array!60119 0))(
  ( (array!60120 (arr!28919 (Array (_ BitVec 32) (_ BitVec 64))) (size!29399 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60119)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969821 (= res!649229 (validKeyInArray!0 (select (arr!28919 _keys!1717) i!822)))))

(declare-fun b!969822 () Bool)

(declare-fun res!649226 () Bool)

(assert (=> b!969822 (=> (not res!649226) (not e!546788))))

(declare-datatypes ((List!20172 0))(
  ( (Nil!20169) (Cons!20168 (h!21330 (_ BitVec 64)) (t!28543 List!20172)) )
))
(declare-fun arrayNoDuplicates!0 (array!60119 (_ BitVec 32) List!20172) Bool)

(assert (=> b!969822 (= res!649226 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20169))))

(declare-fun mapIsEmpty!35065 () Bool)

(declare-fun mapRes!35065 () Bool)

(assert (=> mapIsEmpty!35065 mapRes!35065))

(declare-fun b!969823 () Bool)

(declare-fun e!546789 () Bool)

(declare-fun tp_is_empty!22037 () Bool)

(assert (=> b!969823 (= e!546789 tp_is_empty!22037)))

(declare-fun b!969824 () Bool)

(declare-fun res!649227 () Bool)

(assert (=> b!969824 (=> (not res!649227) (not e!546788))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!969824 (= res!649227 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29399 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29399 _keys!1717))))))

(declare-fun b!969825 () Bool)

(declare-fun res!649231 () Bool)

(assert (=> b!969825 (=> (not res!649231) (not e!546788))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60119 (_ BitVec 32)) Bool)

(assert (=> b!969825 (= res!649231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!649230 () Bool)

(assert (=> start!83174 (=> (not res!649230) (not e!546788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83174 (= res!649230 (validMask!0 mask!2147))))

(assert (=> start!83174 e!546788))

(assert (=> start!83174 true))

(declare-datatypes ((V!34365 0))(
  ( (V!34366 (val!11069 Int)) )
))
(declare-datatypes ((ValueCell!10537 0))(
  ( (ValueCellFull!10537 (v!13628 V!34365)) (EmptyCell!10537) )
))
(declare-datatypes ((array!60121 0))(
  ( (array!60122 (arr!28920 (Array (_ BitVec 32) ValueCell!10537)) (size!29400 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60121)

(declare-fun e!546790 () Bool)

(declare-fun array_inv!22277 (array!60121) Bool)

(assert (=> start!83174 (and (array_inv!22277 _values!1425) e!546790)))

(assert (=> start!83174 tp_is_empty!22037))

(assert (=> start!83174 tp!66696))

(declare-fun array_inv!22278 (array!60119) Bool)

(assert (=> start!83174 (array_inv!22278 _keys!1717)))

(declare-fun b!969826 () Bool)

(assert (=> b!969826 (= e!546790 (and e!546789 mapRes!35065))))

(declare-fun condMapEmpty!35065 () Bool)

(declare-fun mapDefault!35065 () ValueCell!10537)

