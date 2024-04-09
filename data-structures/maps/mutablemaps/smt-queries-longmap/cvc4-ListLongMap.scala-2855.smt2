; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41172 () Bool)

(assert start!41172)

(declare-fun b_free!11033 () Bool)

(declare-fun b_next!11033 () Bool)

(assert (=> start!41172 (= b_free!11033 (not b_next!11033))))

(declare-fun tp!38935 () Bool)

(declare-fun b_and!19323 () Bool)

(assert (=> start!41172 (= tp!38935 b_and!19323)))

(declare-fun b!459619 () Bool)

(declare-fun e!268220 () Bool)

(declare-fun e!268218 () Bool)

(assert (=> b!459619 (= e!268220 e!268218)))

(declare-fun res!274792 () Bool)

(assert (=> b!459619 (=> (not res!274792) (not e!268218))))

(declare-datatypes ((array!28507 0))(
  ( (array!28508 (arr!13691 (Array (_ BitVec 32) (_ BitVec 64))) (size!14043 (_ BitVec 32))) )
))
(declare-fun lt!208019 () array!28507)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28507 (_ BitVec 32)) Bool)

(assert (=> b!459619 (= res!274792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208019 mask!1025))))

(declare-fun _keys!709 () array!28507)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459619 (= lt!208019 (array!28508 (store (arr!13691 _keys!709) i!563 k!794) (size!14043 _keys!709)))))

(declare-fun mapNonEmpty!20206 () Bool)

(declare-fun mapRes!20206 () Bool)

(declare-fun tp!38934 () Bool)

(declare-fun e!268219 () Bool)

(assert (=> mapNonEmpty!20206 (= mapRes!20206 (and tp!38934 e!268219))))

(declare-datatypes ((V!17599 0))(
  ( (V!17600 (val!6230 Int)) )
))
(declare-datatypes ((ValueCell!5842 0))(
  ( (ValueCellFull!5842 (v!8504 V!17599)) (EmptyCell!5842) )
))
(declare-datatypes ((array!28509 0))(
  ( (array!28510 (arr!13692 (Array (_ BitVec 32) ValueCell!5842)) (size!14044 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28509)

(declare-fun mapRest!20206 () (Array (_ BitVec 32) ValueCell!5842))

(declare-fun mapKey!20206 () (_ BitVec 32))

(declare-fun mapValue!20206 () ValueCell!5842)

(assert (=> mapNonEmpty!20206 (= (arr!13692 _values!549) (store mapRest!20206 mapKey!20206 mapValue!20206))))

(declare-fun e!268221 () Bool)

(declare-fun b!459620 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!459620 (= e!268221 (not (= k!794 (select (arr!13691 _keys!709) from!863))))))

(assert (=> b!459620 (not (= (select (arr!13691 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!13316 0))(
  ( (Unit!13317) )
))
(declare-fun lt!208015 () Unit!13316)

(declare-fun e!268217 () Unit!13316)

(assert (=> b!459620 (= lt!208015 e!268217)))

(declare-fun c!56423 () Bool)

(assert (=> b!459620 (= c!56423 (= (select (arr!13691 _keys!709) from!863) k!794))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8180 0))(
  ( (tuple2!8181 (_1!4100 (_ BitVec 64)) (_2!4100 V!17599)) )
))
(declare-datatypes ((List!8284 0))(
  ( (Nil!8281) (Cons!8280 (h!9136 tuple2!8180) (t!14204 List!8284)) )
))
(declare-datatypes ((ListLongMap!7107 0))(
  ( (ListLongMap!7108 (toList!3569 List!8284)) )
))
(declare-fun lt!208018 () ListLongMap!7107)

(declare-fun lt!208017 () ListLongMap!7107)

(declare-fun +!1588 (ListLongMap!7107 tuple2!8180) ListLongMap!7107)

(declare-fun get!6768 (ValueCell!5842 V!17599) V!17599)

(declare-fun dynLambda!898 (Int (_ BitVec 64)) V!17599)

(assert (=> b!459620 (= lt!208018 (+!1588 lt!208017 (tuple2!8181 (select (arr!13691 _keys!709) from!863) (get!6768 (select (arr!13692 _values!549) from!863) (dynLambda!898 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!459622 () Bool)

(declare-fun res!274790 () Bool)

(assert (=> b!459622 (=> (not res!274790) (not e!268220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!459622 (= res!274790 (validKeyInArray!0 k!794))))

(declare-fun b!459623 () Bool)

(declare-fun res!274798 () Bool)

(assert (=> b!459623 (=> (not res!274798) (not e!268220))))

(declare-datatypes ((List!8285 0))(
  ( (Nil!8282) (Cons!8281 (h!9137 (_ BitVec 64)) (t!14205 List!8285)) )
))
(declare-fun arrayNoDuplicates!0 (array!28507 (_ BitVec 32) List!8285) Bool)

(assert (=> b!459623 (= res!274798 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8282))))

(declare-fun b!459624 () Bool)

(declare-fun res!274794 () Bool)

(assert (=> b!459624 (=> (not res!274794) (not e!268220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!459624 (= res!274794 (validMask!0 mask!1025))))

(declare-fun b!459625 () Bool)

(declare-fun res!274800 () Bool)

(assert (=> b!459625 (=> (not res!274800) (not e!268220))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!459625 (= res!274800 (and (= (size!14044 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14043 _keys!709) (size!14044 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!459626 () Bool)

(declare-fun res!274793 () Bool)

(assert (=> b!459626 (=> (not res!274793) (not e!268220))))

(assert (=> b!459626 (= res!274793 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14043 _keys!709))))))

(declare-fun b!459627 () Bool)

(declare-fun e!268214 () Bool)

(declare-fun tp_is_empty!12371 () Bool)

(assert (=> b!459627 (= e!268214 tp_is_empty!12371)))

(declare-fun b!459628 () Bool)

(declare-fun e!268215 () Bool)

(assert (=> b!459628 (= e!268215 (not e!268221))))

(declare-fun res!274801 () Bool)

(assert (=> b!459628 (=> res!274801 e!268221)))

(assert (=> b!459628 (= res!274801 (not (validKeyInArray!0 (select (arr!13691 _keys!709) from!863))))))

(declare-fun lt!208021 () ListLongMap!7107)

(assert (=> b!459628 (= lt!208021 lt!208017)))

(declare-fun lt!208022 () ListLongMap!7107)

(declare-fun v!412 () V!17599)

(assert (=> b!459628 (= lt!208017 (+!1588 lt!208022 (tuple2!8181 k!794 v!412)))))

(declare-fun minValue!515 () V!17599)

(declare-fun zeroValue!515 () V!17599)

(declare-fun lt!208023 () array!28509)

(declare-fun getCurrentListMapNoExtraKeys!1739 (array!28507 array!28509 (_ BitVec 32) (_ BitVec 32) V!17599 V!17599 (_ BitVec 32) Int) ListLongMap!7107)

(assert (=> b!459628 (= lt!208021 (getCurrentListMapNoExtraKeys!1739 lt!208019 lt!208023 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!459628 (= lt!208022 (getCurrentListMapNoExtraKeys!1739 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!208014 () Unit!13316)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!742 (array!28507 array!28509 (_ BitVec 32) (_ BitVec 32) V!17599 V!17599 (_ BitVec 32) (_ BitVec 64) V!17599 (_ BitVec 32) Int) Unit!13316)

(assert (=> b!459628 (= lt!208014 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!742 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!20206 () Bool)

(assert (=> mapIsEmpty!20206 mapRes!20206))

(declare-fun b!459621 () Bool)

(declare-fun res!274788 () Bool)

(assert (=> b!459621 (=> (not res!274788) (not e!268220))))

(assert (=> b!459621 (= res!274788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!274796 () Bool)

(assert (=> start!41172 (=> (not res!274796) (not e!268220))))

(assert (=> start!41172 (= res!274796 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14043 _keys!709))))))

(assert (=> start!41172 e!268220))

(assert (=> start!41172 tp_is_empty!12371))

(assert (=> start!41172 tp!38935))

(assert (=> start!41172 true))

(declare-fun e!268222 () Bool)

(declare-fun array_inv!9900 (array!28509) Bool)

(assert (=> start!41172 (and (array_inv!9900 _values!549) e!268222)))

(declare-fun array_inv!9901 (array!28507) Bool)

(assert (=> start!41172 (array_inv!9901 _keys!709)))

(declare-fun b!459629 () Bool)

(declare-fun res!274791 () Bool)

(assert (=> b!459629 (=> (not res!274791) (not e!268218))))

(assert (=> b!459629 (= res!274791 (arrayNoDuplicates!0 lt!208019 #b00000000000000000000000000000000 Nil!8282))))

(declare-fun b!459630 () Bool)

(declare-fun Unit!13318 () Unit!13316)

(assert (=> b!459630 (= e!268217 Unit!13318)))

(declare-fun b!459631 () Bool)

(declare-fun res!274799 () Bool)

(assert (=> b!459631 (=> (not res!274799) (not e!268218))))

(assert (=> b!459631 (= res!274799 (bvsle from!863 i!563))))

(declare-fun b!459632 () Bool)

(declare-fun Unit!13319 () Unit!13316)

(assert (=> b!459632 (= e!268217 Unit!13319)))

(declare-fun lt!208020 () Unit!13316)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28507 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13316)

(assert (=> b!459632 (= lt!208020 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459632 false))

(declare-fun b!459633 () Bool)

(assert (=> b!459633 (= e!268219 tp_is_empty!12371)))

(declare-fun b!459634 () Bool)

(declare-fun res!274797 () Bool)

(assert (=> b!459634 (=> (not res!274797) (not e!268220))))

(assert (=> b!459634 (= res!274797 (or (= (select (arr!13691 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13691 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459635 () Bool)

(assert (=> b!459635 (= e!268218 e!268215)))

(declare-fun res!274795 () Bool)

(assert (=> b!459635 (=> (not res!274795) (not e!268215))))

(assert (=> b!459635 (= res!274795 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!459635 (= lt!208018 (getCurrentListMapNoExtraKeys!1739 lt!208019 lt!208023 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!459635 (= lt!208023 (array!28510 (store (arr!13692 _values!549) i!563 (ValueCellFull!5842 v!412)) (size!14044 _values!549)))))

(declare-fun lt!208016 () ListLongMap!7107)

(assert (=> b!459635 (= lt!208016 (getCurrentListMapNoExtraKeys!1739 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!459636 () Bool)

(declare-fun res!274789 () Bool)

(assert (=> b!459636 (=> (not res!274789) (not e!268220))))

(declare-fun arrayContainsKey!0 (array!28507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!459636 (= res!274789 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!459637 () Bool)

(assert (=> b!459637 (= e!268222 (and e!268214 mapRes!20206))))

(declare-fun condMapEmpty!20206 () Bool)

(declare-fun mapDefault!20206 () ValueCell!5842)

