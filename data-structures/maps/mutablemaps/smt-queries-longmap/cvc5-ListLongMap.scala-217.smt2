; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3982 () Bool)

(assert start!3982)

(declare-fun b_free!889 () Bool)

(declare-fun b_next!889 () Bool)

(assert (=> start!3982 (= b_free!889 (not b_next!889))))

(declare-fun tp!4086 () Bool)

(declare-fun b_and!1701 () Bool)

(assert (=> start!3982 (= tp!4086 b_and!1701)))

(declare-fun mapIsEmpty!1393 () Bool)

(declare-fun mapRes!1393 () Bool)

(assert (=> mapIsEmpty!1393 mapRes!1393))

(declare-fun b!28783 () Bool)

(declare-fun res!17174 () Bool)

(declare-fun e!18608 () Bool)

(assert (=> b!28783 (=> (not res!17174) (not e!18608))))

(declare-datatypes ((V!1483 0))(
  ( (V!1484 (val!648 Int)) )
))
(declare-datatypes ((ValueCell!422 0))(
  ( (ValueCellFull!422 (v!1737 V!1483)) (EmptyCell!422) )
))
(declare-datatypes ((array!1709 0))(
  ( (array!1710 (arr!808 (Array (_ BitVec 32) ValueCell!422)) (size!909 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1709)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1711 0))(
  ( (array!1712 (arr!809 (Array (_ BitVec 32) (_ BitVec 64))) (size!910 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1711)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!28783 (= res!17174 (and (= (size!909 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!910 _keys!1833) (size!909 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28784 () Bool)

(declare-fun res!17178 () Bool)

(assert (=> b!28784 (=> (not res!17178) (not e!18608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1711 (_ BitVec 32)) Bool)

(assert (=> b!28784 (= res!17178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28785 () Bool)

(declare-fun e!18607 () Bool)

(declare-fun e!18609 () Bool)

(assert (=> b!28785 (= e!18607 (not e!18609))))

(declare-fun res!17176 () Bool)

(assert (=> b!28785 (=> res!17176 e!18609)))

(assert (=> b!28785 (= res!17176 (not (= (size!910 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-datatypes ((tuple2!1062 0))(
  ( (tuple2!1063 (_1!541 (_ BitVec 64)) (_2!541 V!1483)) )
))
(declare-datatypes ((List!674 0))(
  ( (Nil!671) (Cons!670 (h!1237 tuple2!1062) (t!3369 List!674)) )
))
(declare-datatypes ((ListLongMap!643 0))(
  ( (ListLongMap!644 (toList!337 List!674)) )
))
(declare-fun lt!10932 () ListLongMap!643)

(declare-fun lt!10933 () (_ BitVec 32))

(declare-fun contains!274 (ListLongMap!643 (_ BitVec 64)) Bool)

(assert (=> b!28785 (contains!274 lt!10932 (select (arr!809 _keys!1833) lt!10933))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1483)

(declare-fun minValue!1443 () V!1483)

(declare-datatypes ((Unit!657 0))(
  ( (Unit!658) )
))
(declare-fun lt!10934 () Unit!657)

(declare-fun lemmaValidKeyInArrayIsInListMap!20 (array!1711 array!1709 (_ BitVec 32) (_ BitVec 32) V!1483 V!1483 (_ BitVec 32) Int) Unit!657)

(assert (=> b!28785 (= lt!10934 (lemmaValidKeyInArrayIsInListMap!20 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!10933 defaultEntry!1504))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1711 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28785 (= lt!10933 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!28786 () Bool)

(assert (=> b!28786 (= e!18608 e!18607)))

(declare-fun res!17177 () Bool)

(assert (=> b!28786 (=> (not res!17177) (not e!18607))))

(assert (=> b!28786 (= res!17177 (not (contains!274 lt!10932 k!1304)))))

(declare-fun getCurrentListMap!164 (array!1711 array!1709 (_ BitVec 32) (_ BitVec 32) V!1483 V!1483 (_ BitVec 32) Int) ListLongMap!643)

(assert (=> b!28786 (= lt!10932 (getCurrentListMap!164 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!28787 () Bool)

(declare-fun e!18613 () Bool)

(declare-fun tp_is_empty!1243 () Bool)

(assert (=> b!28787 (= e!18613 tp_is_empty!1243)))

(declare-fun b!28788 () Bool)

(declare-fun e!18612 () Bool)

(assert (=> b!28788 (= e!18612 (and e!18613 mapRes!1393))))

(declare-fun condMapEmpty!1393 () Bool)

(declare-fun mapDefault!1393 () ValueCell!422)

