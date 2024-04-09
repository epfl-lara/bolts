; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38578 () Bool)

(assert start!38578)

(declare-fun b_free!9107 () Bool)

(declare-fun b_next!9107 () Bool)

(assert (=> start!38578 (= b_free!9107 (not b_next!9107))))

(declare-fun tp!32444 () Bool)

(declare-fun b_and!16511 () Bool)

(assert (=> start!38578 (= tp!32444 b_and!16511)))

(declare-fun b!398992 () Bool)

(declare-fun res!229462 () Bool)

(declare-fun e!241021 () Bool)

(assert (=> b!398992 (=> (not res!229462) (not e!241021))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398992 (= res!229462 (validMask!0 mask!1025))))

(declare-fun b!398993 () Bool)

(declare-fun res!229463 () Bool)

(assert (=> b!398993 (=> (not res!229463) (not e!241021))))

(declare-datatypes ((array!23857 0))(
  ( (array!23858 (arr!11375 (Array (_ BitVec 32) (_ BitVec 64))) (size!11727 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23857)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!398993 (= res!229463 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun bm!27979 () Bool)

(declare-datatypes ((V!14423 0))(
  ( (V!14424 (val!5039 Int)) )
))
(declare-fun minValue!515 () V!14423)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4651 0))(
  ( (ValueCellFull!4651 (v!7282 V!14423)) (EmptyCell!4651) )
))
(declare-datatypes ((array!23859 0))(
  ( (array!23860 (arr!11376 (Array (_ BitVec 32) ValueCell!4651)) (size!11728 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23859)

(declare-fun zeroValue!515 () V!14423)

(declare-fun c!54542 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!14423)

(declare-fun lt!187509 () array!23857)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!6602 0))(
  ( (tuple2!6603 (_1!3311 (_ BitVec 64)) (_2!3311 V!14423)) )
))
(declare-datatypes ((List!6557 0))(
  ( (Nil!6554) (Cons!6553 (h!7409 tuple2!6602) (t!11739 List!6557)) )
))
(declare-datatypes ((ListLongMap!5529 0))(
  ( (ListLongMap!5530 (toList!2780 List!6557)) )
))
(declare-fun call!27983 () ListLongMap!5529)

(declare-fun getCurrentListMapNoExtraKeys!997 (array!23857 array!23859 (_ BitVec 32) (_ BitVec 32) V!14423 V!14423 (_ BitVec 32) Int) ListLongMap!5529)

(assert (=> bm!27979 (= call!27983 (getCurrentListMapNoExtraKeys!997 (ite c!54542 lt!187509 _keys!709) (ite c!54542 (array!23860 (store (arr!11376 _values!549) i!563 (ValueCellFull!4651 v!412)) (size!11728 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398994 () Bool)

(declare-fun res!229459 () Bool)

(assert (=> b!398994 (=> (not res!229459) (not e!241021))))

(declare-datatypes ((List!6558 0))(
  ( (Nil!6555) (Cons!6554 (h!7410 (_ BitVec 64)) (t!11740 List!6558)) )
))
(declare-fun arrayNoDuplicates!0 (array!23857 (_ BitVec 32) List!6558) Bool)

(assert (=> b!398994 (= res!229459 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6555))))

(declare-fun b!398995 () Bool)

(declare-fun res!229456 () Bool)

(assert (=> b!398995 (=> (not res!229456) (not e!241021))))

(assert (=> b!398995 (= res!229456 (or (= (select (arr!11375 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11375 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398996 () Bool)

(declare-fun res!229458 () Bool)

(assert (=> b!398996 (=> (not res!229458) (not e!241021))))

(assert (=> b!398996 (= res!229458 (and (= (size!11728 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11727 _keys!709) (size!11728 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun bm!27980 () Bool)

(declare-fun call!27982 () ListLongMap!5529)

(assert (=> bm!27980 (= call!27982 (getCurrentListMapNoExtraKeys!997 (ite c!54542 _keys!709 lt!187509) (ite c!54542 _values!549 (array!23860 (store (arr!11376 _values!549) i!563 (ValueCellFull!4651 v!412)) (size!11728 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398997 () Bool)

(declare-fun res!229454 () Bool)

(assert (=> b!398997 (=> (not res!229454) (not e!241021))))

(assert (=> b!398997 (= res!229454 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11727 _keys!709))))))

(declare-fun b!398998 () Bool)

(declare-fun e!241024 () Bool)

(assert (=> b!398998 (= e!241021 e!241024)))

(declare-fun res!229464 () Bool)

(assert (=> b!398998 (=> (not res!229464) (not e!241024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23857 (_ BitVec 32)) Bool)

(assert (=> b!398998 (= res!229464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187509 mask!1025))))

(assert (=> b!398998 (= lt!187509 (array!23858 (store (arr!11375 _keys!709) i!563 k!794) (size!11727 _keys!709)))))

(declare-fun b!398999 () Bool)

(declare-fun e!241022 () Bool)

(assert (=> b!398999 (= e!241022 (= call!27982 call!27983))))

(declare-fun mapIsEmpty!16605 () Bool)

(declare-fun mapRes!16605 () Bool)

(assert (=> mapIsEmpty!16605 mapRes!16605))

(declare-fun res!229457 () Bool)

(assert (=> start!38578 (=> (not res!229457) (not e!241021))))

(assert (=> start!38578 (= res!229457 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11727 _keys!709))))))

(assert (=> start!38578 e!241021))

(declare-fun tp_is_empty!9989 () Bool)

(assert (=> start!38578 tp_is_empty!9989))

(assert (=> start!38578 tp!32444))

(assert (=> start!38578 true))

(declare-fun e!241023 () Bool)

(declare-fun array_inv!8324 (array!23859) Bool)

(assert (=> start!38578 (and (array_inv!8324 _values!549) e!241023)))

(declare-fun array_inv!8325 (array!23857) Bool)

(assert (=> start!38578 (array_inv!8325 _keys!709)))

(declare-fun b!399000 () Bool)

(declare-fun res!229461 () Bool)

(assert (=> b!399000 (=> (not res!229461) (not e!241024))))

(assert (=> b!399000 (= res!229461 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11727 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!399001 () Bool)

(declare-fun res!229455 () Bool)

(assert (=> b!399001 (=> (not res!229455) (not e!241021))))

(assert (=> b!399001 (= res!229455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399002 () Bool)

(declare-fun e!241020 () Bool)

(assert (=> b!399002 (= e!241020 tp_is_empty!9989)))

(declare-fun b!399003 () Bool)

(declare-fun e!241018 () Bool)

(assert (=> b!399003 (= e!241018 tp_is_empty!9989)))

(declare-fun b!399004 () Bool)

(declare-fun +!1073 (ListLongMap!5529 tuple2!6602) ListLongMap!5529)

(assert (=> b!399004 (= e!241022 (= call!27983 (+!1073 call!27982 (tuple2!6603 k!794 v!412))))))

(declare-fun b!399005 () Bool)

(declare-fun res!229460 () Bool)

(assert (=> b!399005 (=> (not res!229460) (not e!241021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399005 (= res!229460 (validKeyInArray!0 k!794))))

(declare-fun b!399006 () Bool)

(assert (=> b!399006 (= e!241023 (and e!241020 mapRes!16605))))

(declare-fun condMapEmpty!16605 () Bool)

(declare-fun mapDefault!16605 () ValueCell!4651)

