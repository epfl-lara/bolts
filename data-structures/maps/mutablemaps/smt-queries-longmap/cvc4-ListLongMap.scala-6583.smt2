; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83414 () Bool)

(assert start!83414)

(declare-fun b_free!19379 () Bool)

(declare-fun b_next!19379 () Bool)

(assert (=> start!83414 (= b_free!19379 (not b_next!19379))))

(declare-fun tp!67416 () Bool)

(declare-fun b_and!30997 () Bool)

(assert (=> start!83414 (= tp!67416 b_and!30997)))

(declare-fun b!973621 () Bool)

(declare-fun res!651838 () Bool)

(declare-fun e!548843 () Bool)

(assert (=> b!973621 (=> (not res!651838) (not e!548843))))

(declare-datatypes ((array!60579 0))(
  ( (array!60580 (arr!29149 (Array (_ BitVec 32) (_ BitVec 64))) (size!29629 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60579)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!973621 (= res!651838 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29629 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29629 _keys!1717))))))

(declare-fun b!973623 () Bool)

(declare-fun e!548840 () Bool)

(assert (=> b!973623 (= e!548843 e!548840)))

(declare-fun res!651834 () Bool)

(assert (=> b!973623 (=> (not res!651834) (not e!548840))))

(declare-datatypes ((V!34685 0))(
  ( (V!34686 (val!11189 Int)) )
))
(declare-datatypes ((tuple2!14468 0))(
  ( (tuple2!14469 (_1!7244 (_ BitVec 64)) (_2!7244 V!34685)) )
))
(declare-datatypes ((List!20347 0))(
  ( (Nil!20344) (Cons!20343 (h!21505 tuple2!14468) (t!28832 List!20347)) )
))
(declare-datatypes ((ListLongMap!13179 0))(
  ( (ListLongMap!13180 (toList!6605 List!20347)) )
))
(declare-fun lt!432647 () ListLongMap!13179)

(declare-fun contains!5649 (ListLongMap!13179 (_ BitVec 64)) Bool)

(assert (=> b!973623 (= res!651834 (contains!5649 lt!432647 (select (arr!29149 _keys!1717) i!822)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10657 0))(
  ( (ValueCellFull!10657 (v!13748 V!34685)) (EmptyCell!10657) )
))
(declare-datatypes ((array!60581 0))(
  ( (array!60582 (arr!29150 (Array (_ BitVec 32) ValueCell!10657)) (size!29630 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60581)

(declare-fun zeroValue!1367 () V!34685)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34685)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3790 (array!60579 array!60581 (_ BitVec 32) (_ BitVec 32) V!34685 V!34685 (_ BitVec 32) Int) ListLongMap!13179)

(assert (=> b!973623 (= lt!432647 (getCurrentListMap!3790 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!973624 () Bool)

(declare-fun e!548838 () Bool)

(declare-fun tp_is_empty!22277 () Bool)

(assert (=> b!973624 (= e!548838 tp_is_empty!22277)))

(declare-fun b!973625 () Bool)

(declare-fun res!651839 () Bool)

(assert (=> b!973625 (=> (not res!651839) (not e!548843))))

(assert (=> b!973625 (= res!651839 (and (= (size!29630 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29629 _keys!1717) (size!29630 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35425 () Bool)

(declare-fun mapRes!35425 () Bool)

(assert (=> mapIsEmpty!35425 mapRes!35425))

(declare-fun b!973626 () Bool)

(declare-fun res!651841 () Bool)

(assert (=> b!973626 (=> (not res!651841) (not e!548843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60579 (_ BitVec 32)) Bool)

(assert (=> b!973626 (= res!651841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973627 () Bool)

(declare-fun e!548839 () Bool)

(assert (=> b!973627 (= e!548839 tp_is_empty!22277)))

(declare-fun b!973628 () Bool)

(declare-fun e!548841 () Bool)

(assert (=> b!973628 (= e!548841 (not (bvsle (bvsub from!2118 #b00000000000000000000000000000001) (size!29629 _keys!1717))))))

(declare-fun lt!432644 () tuple2!14468)

(declare-fun +!2874 (ListLongMap!13179 tuple2!14468) ListLongMap!13179)

(assert (=> b!973628 (contains!5649 (+!2874 lt!432647 lt!432644) (select (arr!29149 _keys!1717) i!822))))

(declare-fun lt!432646 () (_ BitVec 64))

(declare-fun lt!432643 () V!34685)

(declare-datatypes ((Unit!32409 0))(
  ( (Unit!32410) )
))
(declare-fun lt!432645 () Unit!32409)

(declare-fun addStillContains!613 (ListLongMap!13179 (_ BitVec 64) V!34685 (_ BitVec 64)) Unit!32409)

(assert (=> b!973628 (= lt!432645 (addStillContains!613 lt!432647 lt!432646 lt!432643 (select (arr!29149 _keys!1717) i!822)))))

(declare-fun lt!432648 () ListLongMap!13179)

(assert (=> b!973628 (= lt!432648 (+!2874 (getCurrentListMap!3790 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432644))))

(assert (=> b!973628 (= lt!432644 (tuple2!14469 lt!432646 lt!432643))))

(declare-fun get!15135 (ValueCell!10657 V!34685) V!34685)

(declare-fun dynLambda!1713 (Int (_ BitVec 64)) V!34685)

(assert (=> b!973628 (= lt!432643 (get!15135 (select (arr!29150 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1713 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432649 () Unit!32409)

(declare-fun lemmaListMapRecursiveValidKeyArray!285 (array!60579 array!60581 (_ BitVec 32) (_ BitVec 32) V!34685 V!34685 (_ BitVec 32) Int) Unit!32409)

(assert (=> b!973628 (= lt!432649 (lemmaListMapRecursiveValidKeyArray!285 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun res!651835 () Bool)

(assert (=> start!83414 (=> (not res!651835) (not e!548843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83414 (= res!651835 (validMask!0 mask!2147))))

(assert (=> start!83414 e!548843))

(assert (=> start!83414 true))

(declare-fun e!548842 () Bool)

(declare-fun array_inv!22443 (array!60581) Bool)

(assert (=> start!83414 (and (array_inv!22443 _values!1425) e!548842)))

(assert (=> start!83414 tp_is_empty!22277))

(assert (=> start!83414 tp!67416))

(declare-fun array_inv!22444 (array!60579) Bool)

(assert (=> start!83414 (array_inv!22444 _keys!1717)))

(declare-fun b!973622 () Bool)

(declare-fun res!651836 () Bool)

(assert (=> b!973622 (=> (not res!651836) (not e!548843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973622 (= res!651836 (validKeyInArray!0 (select (arr!29149 _keys!1717) i!822)))))

(declare-fun b!973629 () Bool)

(assert (=> b!973629 (= e!548840 e!548841)))

(declare-fun res!651837 () Bool)

(assert (=> b!973629 (=> (not res!651837) (not e!548841))))

(assert (=> b!973629 (= res!651837 (validKeyInArray!0 lt!432646))))

(assert (=> b!973629 (= lt!432646 (select (arr!29149 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!973629 (= lt!432648 (getCurrentListMap!3790 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973630 () Bool)

(assert (=> b!973630 (= e!548842 (and e!548838 mapRes!35425))))

(declare-fun condMapEmpty!35425 () Bool)

(declare-fun mapDefault!35425 () ValueCell!10657)

