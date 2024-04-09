; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133790 () Bool)

(assert start!133790)

(declare-fun b!1563952 () Bool)

(declare-fun res!1069302 () Bool)

(declare-fun e!871689 () Bool)

(assert (=> b!1563952 (=> (not res!1069302) (not e!871689))))

(declare-datatypes ((array!104341 0))(
  ( (array!104342 (arr!50358 (Array (_ BitVec 32) (_ BitVec 64))) (size!50909 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104341)

(declare-datatypes ((List!36711 0))(
  ( (Nil!36708) (Cons!36707 (h!38154 (_ BitVec 64)) (t!51565 List!36711)) )
))
(declare-fun arrayNoDuplicates!0 (array!104341 (_ BitVec 32) List!36711) Bool)

(assert (=> b!1563952 (= res!1069302 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36708))))

(declare-fun b!1563953 () Bool)

(declare-fun e!871687 () Bool)

(declare-fun e!871688 () Bool)

(declare-fun mapRes!59637 () Bool)

(assert (=> b!1563953 (= e!871687 (and e!871688 mapRes!59637))))

(declare-fun condMapEmpty!59637 () Bool)

(declare-datatypes ((V!59995 0))(
  ( (V!59996 (val!19504 Int)) )
))
(declare-datatypes ((ValueCell!18390 0))(
  ( (ValueCellFull!18390 (v!22253 V!59995)) (EmptyCell!18390) )
))
(declare-datatypes ((array!104343 0))(
  ( (array!104344 (arr!50359 (Array (_ BitVec 32) ValueCell!18390)) (size!50910 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104343)

(declare-fun mapDefault!59637 () ValueCell!18390)

(assert (=> b!1563953 (= condMapEmpty!59637 (= (arr!50359 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18390)) mapDefault!59637)))))

(declare-fun b!1563954 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1563954 (= e!871689 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50909 _keys!637)) (bvslt (bvsub (bvadd #b00000000000000000000000000000001 (size!50909 _keys!637)) from!782) #b00000000000000000000000000000000)))))

(declare-fun b!1563955 () Bool)

(declare-fun tp_is_empty!38841 () Bool)

(assert (=> b!1563955 (= e!871688 tp_is_empty!38841)))

(declare-fun mapNonEmpty!59637 () Bool)

(declare-fun tp!113563 () Bool)

(declare-fun e!871691 () Bool)

(assert (=> mapNonEmpty!59637 (= mapRes!59637 (and tp!113563 e!871691))))

(declare-fun mapValue!59637 () ValueCell!18390)

(declare-fun mapRest!59637 () (Array (_ BitVec 32) ValueCell!18390))

(declare-fun mapKey!59637 () (_ BitVec 32))

(assert (=> mapNonEmpty!59637 (= (arr!50359 _values!487) (store mapRest!59637 mapKey!59637 mapValue!59637))))

(declare-fun mapIsEmpty!59637 () Bool)

(assert (=> mapIsEmpty!59637 mapRes!59637))

(declare-fun res!1069304 () Bool)

(assert (=> start!133790 (=> (not res!1069304) (not e!871689))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133790 (= res!1069304 (validMask!0 mask!947))))

(assert (=> start!133790 e!871689))

(assert (=> start!133790 true))

(declare-fun array_inv!39063 (array!104341) Bool)

(assert (=> start!133790 (array_inv!39063 _keys!637)))

(declare-fun array_inv!39064 (array!104343) Bool)

(assert (=> start!133790 (and (array_inv!39064 _values!487) e!871687)))

(declare-fun b!1563956 () Bool)

(assert (=> b!1563956 (= e!871691 tp_is_empty!38841)))

(declare-fun b!1563957 () Bool)

(declare-fun res!1069303 () Bool)

(assert (=> b!1563957 (=> (not res!1069303) (not e!871689))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104341 (_ BitVec 32)) Bool)

(assert (=> b!1563957 (= res!1069303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563958 () Bool)

(declare-fun res!1069301 () Bool)

(assert (=> b!1563958 (=> (not res!1069301) (not e!871689))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1563958 (= res!1069301 (and (= (size!50910 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50909 _keys!637) (size!50910 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(assert (= (and start!133790 res!1069304) b!1563958))

(assert (= (and b!1563958 res!1069301) b!1563957))

(assert (= (and b!1563957 res!1069303) b!1563952))

(assert (= (and b!1563952 res!1069302) b!1563954))

(assert (= (and b!1563953 condMapEmpty!59637) mapIsEmpty!59637))

(assert (= (and b!1563953 (not condMapEmpty!59637)) mapNonEmpty!59637))

(get-info :version)

(assert (= (and mapNonEmpty!59637 ((_ is ValueCellFull!18390) mapValue!59637)) b!1563956))

(assert (= (and b!1563953 ((_ is ValueCellFull!18390) mapDefault!59637)) b!1563955))

(assert (= start!133790 b!1563953))

(declare-fun m!1439347 () Bool)

(assert (=> b!1563952 m!1439347))

(declare-fun m!1439349 () Bool)

(assert (=> mapNonEmpty!59637 m!1439349))

(declare-fun m!1439351 () Bool)

(assert (=> start!133790 m!1439351))

(declare-fun m!1439353 () Bool)

(assert (=> start!133790 m!1439353))

(declare-fun m!1439355 () Bool)

(assert (=> start!133790 m!1439355))

(declare-fun m!1439357 () Bool)

(assert (=> b!1563957 m!1439357))

(check-sat (not mapNonEmpty!59637) tp_is_empty!38841 (not b!1563957) (not b!1563952) (not start!133790))
(check-sat)
(get-model)

(declare-fun d!162985 () Bool)

(assert (=> d!162985 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!133790 d!162985))

(declare-fun d!162987 () Bool)

(assert (=> d!162987 (= (array_inv!39063 _keys!637) (bvsge (size!50909 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!133790 d!162987))

(declare-fun d!162989 () Bool)

(assert (=> d!162989 (= (array_inv!39064 _values!487) (bvsge (size!50910 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!133790 d!162989))

(declare-fun b!1563988 () Bool)

(declare-fun e!871714 () Bool)

(declare-fun e!871713 () Bool)

(assert (=> b!1563988 (= e!871714 e!871713)))

(declare-fun lt!671927 () (_ BitVec 64))

(assert (=> b!1563988 (= lt!671927 (select (arr!50358 _keys!637) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51926 0))(
  ( (Unit!51927) )
))
(declare-fun lt!671928 () Unit!51926)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104341 (_ BitVec 64) (_ BitVec 32)) Unit!51926)

(assert (=> b!1563988 (= lt!671928 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!637 lt!671927 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1563988 (arrayContainsKey!0 _keys!637 lt!671927 #b00000000000000000000000000000000)))

(declare-fun lt!671926 () Unit!51926)

(assert (=> b!1563988 (= lt!671926 lt!671928)))

(declare-fun res!1069321 () Bool)

(declare-datatypes ((SeekEntryResult!13519 0))(
  ( (MissingZero!13519 (index!56473 (_ BitVec 32))) (Found!13519 (index!56474 (_ BitVec 32))) (Intermediate!13519 (undefined!14331 Bool) (index!56475 (_ BitVec 32)) (x!140428 (_ BitVec 32))) (Undefined!13519) (MissingVacant!13519 (index!56476 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104341 (_ BitVec 32)) SeekEntryResult!13519)

(assert (=> b!1563988 (= res!1069321 (= (seekEntryOrOpen!0 (select (arr!50358 _keys!637) #b00000000000000000000000000000000) _keys!637 mask!947) (Found!13519 #b00000000000000000000000000000000)))))

(assert (=> b!1563988 (=> (not res!1069321) (not e!871713))))

(declare-fun b!1563989 () Bool)

(declare-fun e!871715 () Bool)

(assert (=> b!1563989 (= e!871715 e!871714)))

(declare-fun c!144161 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563989 (= c!144161 (validKeyInArray!0 (select (arr!50358 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1563990 () Bool)

(declare-fun call!71844 () Bool)

(assert (=> b!1563990 (= e!871714 call!71844)))

(declare-fun d!162991 () Bool)

(declare-fun res!1069322 () Bool)

(assert (=> d!162991 (=> res!1069322 e!871715)))

(assert (=> d!162991 (= res!1069322 (bvsge #b00000000000000000000000000000000 (size!50909 _keys!637)))))

(assert (=> d!162991 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947) e!871715)))

(declare-fun b!1563991 () Bool)

(assert (=> b!1563991 (= e!871713 call!71844)))

(declare-fun bm!71841 () Bool)

(assert (=> bm!71841 (= call!71844 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!637 mask!947))))

(assert (= (and d!162991 (not res!1069322)) b!1563989))

(assert (= (and b!1563989 c!144161) b!1563988))

(assert (= (and b!1563989 (not c!144161)) b!1563990))

(assert (= (and b!1563988 res!1069321) b!1563991))

(assert (= (or b!1563991 b!1563990) bm!71841))

(declare-fun m!1439371 () Bool)

(assert (=> b!1563988 m!1439371))

(declare-fun m!1439373 () Bool)

(assert (=> b!1563988 m!1439373))

(declare-fun m!1439375 () Bool)

(assert (=> b!1563988 m!1439375))

(assert (=> b!1563988 m!1439371))

(declare-fun m!1439377 () Bool)

(assert (=> b!1563988 m!1439377))

(assert (=> b!1563989 m!1439371))

(assert (=> b!1563989 m!1439371))

(declare-fun m!1439379 () Bool)

(assert (=> b!1563989 m!1439379))

(declare-fun m!1439381 () Bool)

(assert (=> bm!71841 m!1439381))

(assert (=> b!1563957 d!162991))

(declare-fun bm!71844 () Bool)

(declare-fun call!71847 () Bool)

(declare-fun c!144164 () Bool)

(assert (=> bm!71844 (= call!71847 (arrayNoDuplicates!0 _keys!637 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!144164 (Cons!36707 (select (arr!50358 _keys!637) #b00000000000000000000000000000000) Nil!36708) Nil!36708)))))

(declare-fun b!1564002 () Bool)

(declare-fun e!871725 () Bool)

(assert (=> b!1564002 (= e!871725 call!71847)))

(declare-fun b!1564003 () Bool)

(declare-fun e!871724 () Bool)

(assert (=> b!1564003 (= e!871724 e!871725)))

(assert (=> b!1564003 (= c!144164 (validKeyInArray!0 (select (arr!50358 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun d!162993 () Bool)

(declare-fun res!1069329 () Bool)

(declare-fun e!871726 () Bool)

(assert (=> d!162993 (=> res!1069329 e!871726)))

(assert (=> d!162993 (= res!1069329 (bvsge #b00000000000000000000000000000000 (size!50909 _keys!637)))))

(assert (=> d!162993 (= (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36708) e!871726)))

(declare-fun b!1564004 () Bool)

(declare-fun e!871727 () Bool)

(declare-fun contains!10321 (List!36711 (_ BitVec 64)) Bool)

(assert (=> b!1564004 (= e!871727 (contains!10321 Nil!36708 (select (arr!50358 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1564005 () Bool)

(assert (=> b!1564005 (= e!871726 e!871724)))

(declare-fun res!1069330 () Bool)

(assert (=> b!1564005 (=> (not res!1069330) (not e!871724))))

(assert (=> b!1564005 (= res!1069330 (not e!871727))))

(declare-fun res!1069331 () Bool)

(assert (=> b!1564005 (=> (not res!1069331) (not e!871727))))

(assert (=> b!1564005 (= res!1069331 (validKeyInArray!0 (select (arr!50358 _keys!637) #b00000000000000000000000000000000)))))

(declare-fun b!1564006 () Bool)

(assert (=> b!1564006 (= e!871725 call!71847)))

(assert (= (and d!162993 (not res!1069329)) b!1564005))

(assert (= (and b!1564005 res!1069331) b!1564004))

(assert (= (and b!1564005 res!1069330) b!1564003))

(assert (= (and b!1564003 c!144164) b!1564006))

(assert (= (and b!1564003 (not c!144164)) b!1564002))

(assert (= (or b!1564006 b!1564002) bm!71844))

(assert (=> bm!71844 m!1439371))

(declare-fun m!1439383 () Bool)

(assert (=> bm!71844 m!1439383))

(assert (=> b!1564003 m!1439371))

(assert (=> b!1564003 m!1439371))

(assert (=> b!1564003 m!1439379))

(assert (=> b!1564004 m!1439371))

(assert (=> b!1564004 m!1439371))

(declare-fun m!1439385 () Bool)

(assert (=> b!1564004 m!1439385))

(assert (=> b!1564005 m!1439371))

(assert (=> b!1564005 m!1439371))

(assert (=> b!1564005 m!1439379))

(assert (=> b!1563952 d!162993))

(declare-fun mapNonEmpty!59643 () Bool)

(declare-fun mapRes!59643 () Bool)

(declare-fun tp!113569 () Bool)

(declare-fun e!871732 () Bool)

(assert (=> mapNonEmpty!59643 (= mapRes!59643 (and tp!113569 e!871732))))

(declare-fun mapKey!59643 () (_ BitVec 32))

(declare-fun mapValue!59643 () ValueCell!18390)

(declare-fun mapRest!59643 () (Array (_ BitVec 32) ValueCell!18390))

(assert (=> mapNonEmpty!59643 (= mapRest!59637 (store mapRest!59643 mapKey!59643 mapValue!59643))))

(declare-fun b!1564014 () Bool)

(declare-fun e!871733 () Bool)

(assert (=> b!1564014 (= e!871733 tp_is_empty!38841)))

(declare-fun b!1564013 () Bool)

(assert (=> b!1564013 (= e!871732 tp_is_empty!38841)))

(declare-fun mapIsEmpty!59643 () Bool)

(assert (=> mapIsEmpty!59643 mapRes!59643))

(declare-fun condMapEmpty!59643 () Bool)

(declare-fun mapDefault!59643 () ValueCell!18390)

(assert (=> mapNonEmpty!59637 (= condMapEmpty!59643 (= mapRest!59637 ((as const (Array (_ BitVec 32) ValueCell!18390)) mapDefault!59643)))))

(assert (=> mapNonEmpty!59637 (= tp!113563 (and e!871733 mapRes!59643))))

(assert (= (and mapNonEmpty!59637 condMapEmpty!59643) mapIsEmpty!59643))

(assert (= (and mapNonEmpty!59637 (not condMapEmpty!59643)) mapNonEmpty!59643))

(assert (= (and mapNonEmpty!59643 ((_ is ValueCellFull!18390) mapValue!59643)) b!1564013))

(assert (= (and mapNonEmpty!59637 ((_ is ValueCellFull!18390) mapDefault!59643)) b!1564014))

(declare-fun m!1439387 () Bool)

(assert (=> mapNonEmpty!59643 m!1439387))

(check-sat (not b!1564003) (not b!1564004) (not b!1564005) tp_is_empty!38841 (not bm!71841) (not b!1563988) (not bm!71844) (not b!1563989) (not mapNonEmpty!59643))
(check-sat)
